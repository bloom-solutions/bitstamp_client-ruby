# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [1.1.0] - 2019-01-07
### Fixed
- Factories updated to FactoryBot

### Added
- `MarketOrder` `#buy` and `#sell`

## [1.0.1] - 2019-01-07
### Fixed
- All responses are not successful when Bitstamp's response has a `status` key

## [1.0.0] - 2019-01-04
### Added
- Place market orders

## [0.3.1] - 2017-08-10
### Added
- FactoryGirl factories

## [0.3.0] - 2017-08-10
### Changed
- Use language of bitstamp regarding bid/ask

## [0.2.1]
### Changed
- Fix buy/bid and sell/ask assignments from the raw response

## [0.2.0]
### Added
- Add functionality to grab exchange rates

## [0.1.0]
### Added
- Initial release. Pull order book
