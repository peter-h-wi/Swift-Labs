# Academy Project 01 – Choosey

| Expected Preparation                                         |
| :----------------------------------------------------------- |
| Day 1 - variables, simple data types, and string interpolation |
| Day 2 - arrays, dictionaries, sets, and enums                |
| Day 3 - operators and conditions                             |
| Day 4 - loops, loops, and more loops                         |
| Day 5 - functions, parameters, and errors                    |

## Goal

This project aims to do two things:

1. Give you a first exposure to working on a real app in Xcode
2. Give you a chance to apply your new knowledge of the basic principles of Swift

The repository already contains a fully-featured app, **Choosey**, that helps users decide where to eat. As a part of today's meeting, you will be adding a couple of features to help make the user-experience *great*.

This is what we'll be working towards:

<img src="Screenshots/choosey-demo.gif" alt="Choosey Demo" width="250"/>

## Installation

Here are the steps to get the starter repo for this project onto your machine and opened with Xcode.

1. Clone this repository onto your computer. I recommend that you create a new directory specifically for your App Team Carolina work. Run the following command in your Terminal (while "cd'ed" into your App Team directory) to clone this repo:

   ```bash
   # git clone https://github.com/appteamcarolina/p01-choosey.git
   ```

2. Open the `p01-choosey.xcodeproj` file with Xcode.

## Setup

This project uses the [Yelp Business Search API](https://www.yelp.com/developers/documentation/v3/business_search) to search for restaurants in Chapel Hill. Because of this, we'll need to do some setup to  allow you to run this project on your laptop.

1. Go to [fusion.yelp.com](https://fusion.yelp.com), click "Get Started", create an account, and fill in the following details for your new app.

   > App Name: **p01-choosey**
   >
   > Industry: **Food & Drink**
   >
   > Contact Email: **<# your email #>**
   >
   > Description: **Helps you decide what to eat near you**

2. Submit the form and then copy your new API key to your clipboard.

3. Find the folder called `Secrets` in the Xcode file directory and open it in Xcode.

   > Hint: its path is `p01-choosey/Service/Secrets.swift`

4. Paste your new API key into the placeholder that says **Yelp API Key**. Feel free to delete the comment regarding details.
5. Run your project using **⌘+R** or by pressing the **►** button in Xcode.
6. Wait for the app to build and run, then play around with the app in the Simulator.

### Tasks

- [ ] Find `BusinessListViewModel.swift`

- [ ] Add some code to the beginning the `getPlaces()` method to empty the `businesses` array and return if `searchTerm` is empty.

- [ ] Add a method called `getBestRestaurantId` to the `BusinessListViewModel` class that:

  - [ ] Accepts an array of businesses called `businesses` as a parameter.

  - [ ] Returns a value of type `String?`.

  - [ ] In this function, use a `for` loop to find the business with the highest rating. Return that business's `id`.

    > Hint: the `Business` type has properties called `rating` and `id`. `rating` is a Double representing the business's rating (out of 5), and `id` is a String containing a unique identifier for a given business.
