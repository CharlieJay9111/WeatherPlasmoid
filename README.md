# WeatherPlasmoid

A simple KDE Plasma widget that displays the current temperature.

The plasmoid retrieves current weather data from the Open-Meteo API and automatically updates the displayed temperature every minute.

## Why I created it

I created this plasmoid because the weather widget available on my Fedora installation was showing inaccurate weather data for my location. I decided to create a simple alternative using the Open-Meteo API.

## Features

- Displays the current temperature
- Automatically updates every minute
- Uses the Open-Meteo API

## Technologies

- QML / Qt Quick
- KDE Plasma
- Kirigami
- JavaScript
- Open-Meteo API

## Installation

Copy the project to your KDE Plasma widgets directory and add the widget to your desktop or panel.

## Notes

The default location is set to Prague in `weather.js`. You can change the latitude and longitude to use a different location.