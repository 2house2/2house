source "https://rubygems.org"

gem "rails", "~> 7.0.4"
gem "pg"           # Base de datos para producción (PostgreSQL)
gem "puma", "~> 5.0"         # Servidor web
gem "sass-rails", ">= 6"
gem "webpacker", "~> 5.0"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

# Seguridad para contraseñas
gem "bcrypt", "~> 3.1.7"

# Desarrollo
group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

# Solo en desarrollo
group :development do
  gem "web-console", ">= 4.1.0"
  gem "listen", "~> 3.3"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

# Solo para test
group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
end