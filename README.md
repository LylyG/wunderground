# Weather Report

## Description

This program allows you to retrieve current weather information from just about any location in the U.S. via Weather Underground's API.

## Usage
```ruby
  def sunrise
    "#{@response["sun_phase"]["sunrise"]["hour"]}" +
    ":#{@response["sun_phase"]["sunrise"]["minute"]}"
  end

  def sunset
    "#{@response["sun_phase"]["sunset"]["hour"]}" +
    ":#{@response["sun_phase"]["sunset"]["minute"]}"
  end
```
Methods access specific API endpoints to present the user requested data. 

## Estimate

* Accurate Output: 2 hours
* Test Suite: 8 hours
* Classes: 2 hours

## Reflection

I tend to overestimate how long things will take me, so my estimates are usually close to the mark. Since the tasks are interwoven, it's difficult to accurately separate how long they took me but the total amount was pretty close. I sepnt about 8 hours on this project, but feel like I needed more time. Twelve hours is probably what I actually needed. 
