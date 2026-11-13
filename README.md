# Instagram UI — SwiftUI

A SwiftUI recreation of the Instagram home screen, focused on layout, view composition and reusable components.

![Screenshot](https://user-images.githubusercontent.com/74186625/195354711-461eea5e-2680-496c-b621-0532fbc4af49.png)

## Features

- Custom top navigation bar
- Horizontally scrolling stories list
- Scrollable feed with post header, image and action buttons (like, comment, share, bookmark)
- Five-tab `TabView` (home, search, reels, shop, profile)

## Implementation

- Built entirely in **SwiftUI**, with the screen split into small reusable views: `Navigation`, `StoryList`, `Story` and `FeedItem`
- Type-safe image assets generated with **SwiftGen** (`Assets.swift`) instead of string-based image names
- Vector (PDF) icon assets

## Requirements

- Xcode 13.4+
- iOS 15.5+

## Getting started

```bash
git clone https://github.com/mustafahegy/instgram-ui-app.git
open instgram-ui-app/InstgramApp.xcodeproj
```

Build and run the `InstgramApp` scheme on a simulator. No third-party dependencies are required.

> This is a UI study project. Only the home tab is implemented; the other tabs are placeholders.
