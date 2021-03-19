class ApplicationController < ActionController::Base
  around_action :switch_global_locale, :switch_mobility_locale

  # TODO: баг - иногда глобальная локаль все равно меняется при изменении Mobility локали
  def switch_global_locale(&action)
    locale = params[:locale]
    I18n.with_locale(locale, &action) unless locale.nil?
    yield
  end

  def switch_mobility_locale(&action)
    locale = params[:mobility]
    unless locale.nil?
      symbol_locale = :en
      symbol_locale = :ru if locale == 'ru'

      Mobility.with_locale(symbol_locale, &action)
    end
    yield
  end
end
