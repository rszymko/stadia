Date::DATE_FORMATS[:stadia] = '%Y-%m-%d'
Time::DATE_FORMATS[:stadia] = ->(date) { "#{date.utc.to_s(:db)} GMT" }

# Local Date Format
Time::DATE_FORMATS[:local] = '%F %T'
Date::DATE_FORMATS[:local] = '%F'

# set the default the date and time formatter as stadia
Date::DATE_FORMATS[:default] = Date::DATE_FORMATS[:stadia]
Time::DATE_FORMATS[:default] = Time::DATE_FORMATS[:stadia]
