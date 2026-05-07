# Browsers for Developers

This is supplementary material.

## The Browser Market

It is important to distinguish between the concepts of a *browser* and a *render engine*: the render engine is the part of the browser responsible for rendering pages and running JavaScript. Most render engines are open source. Multiple browsers can be built around a given render engine.

- The **Chromium** engine powers not only [Chrome](https://www.google.com/chrome/) but also [Vivaldi](https://vivaldi.com/) and the desktop version of [Opera](https://www.opera.com/), among others.
- In 2020, Microsoft discontinued development of its own browser engine and switched Edge to the Chromium engine as well.
- Apple's [Safari](https://www.apple.com/safari/) and the [DuckDuckGo](https://duckduckgo.com/) browser are both built on the **WebKit** engine. On iOS devices, it is not possible to use any browser engine other than the built-in WebKit — browsers installed from the App Store merely wrap a different UI around WebKit.
- Firefox is built on the **Gecko** engine, developed by the Mozilla Foundation.

The [Chrome browser for enterprise](https://chromeenterprise.google/browser/download/) edition allows centralized management of the browser's security settings. In a corporate environment, for example, file uploads/downloads and password saving can be disabled, and administrators have control over software updates.

### Where Does the Profit Come From?

In the browser market, the primary source of profit is the monetization of search traffic.

Mozilla operates in an interesting way: the market-oriented Mozilla Corporation is 100% owned by the Mozilla Foundation. A significant portion of Mozilla Corporation's revenue comes from redirecting search traffic — Google, Yahoo, Yandex, and Baidu have all paid to be the default search engine in various regions. Currently, more than 90% of Mozilla's revenue comes from Google.

In 2020, Mozilla laid off 250 employees, roughly a quarter of its entire workforce. This news caused widespread concern, because if development of the Gecko engine were to cease, Google's Chromium would become the sole dominant engine on the market.

It is worth asking why Alphabet, the company behind Google, keeps Firefox alive by purchasing its search traffic — since if Firefox were to die, a significant portion of its users would likely be forced to switch to Chrome.

Further reading on the topic:

- https://medium.com/swlh/could-google-crush-firefox-in-2020-13a55b5d4526
- https://netmarketshare.com/
- https://www.mozilla.org/en-US/foundation/annualreport/2018/

## Debugging Websites on Mobile Devices

### iOS

There is no Windows or Linux version of Safari! Developing for iOS devices and debugging web pages running in Safari can only be done on a Mac. (There are clickbait sites claiming that macOS can be run in a virtual machine on a PC, but we have never seen this work in practice, and it is legally questionable as well.)

More information can be found on Apple's [Web Development Tools](https://developer.apple.com/safari/tools/) page.

### Android

Steps:

1. Open the **Developer Options** screen on your Android. See [Configure On-Device Developer Options](https://developer.android.com/studio/debug/dev-options.html).
2. Select **Enable USB Debugging**.
3. On your development machine, open Chrome.
4. Go to `chrome://inspect#devices`.
5. Make sure that the **Discover USB devices** checkbox is enabled.

More information can be found on the Google developer site in the [Get Started with Remote Debugging Android Devices](https://developers.google.com/web/tools/chrome-devtools/remote-debugging) article.

## Lighthouse

Page load speed has a significant impact on user experience. In 2016, Pinterest conducted an experiment to optimize their websites, ultimately reducing wait times by 40%, which led to a 15% increase in search-referred traffic and a 15% increase in user registrations ([Meder et al., 2017](https://medium.com/pinterest-engineering/driving-user-growth-with-performance-improvements-cfc50dafadd7)).

Lighthouse is an open-source, automated tool built into Chrome DevTools (and available as a CLI or Node module) for auditing the quality of web pages. It evaluates performance, accessibility, SEO, and best practices, producing a scored report with actionable recommendations.

To run Lighthouse in Chrome DevTools:

1. Open DevTools (`F12` or `Cmd+Option+I`).
2. Navigate to the **Lighthouse** tab.
3. Select the categories you want to audit and click **Analyze page load**.

### Lighthouse Metrics

#### First Contentful Paint (FCP)

First Contentful Paint measures how long it takes the browser to render the first part of the DOM after the user navigates to the page. One of the biggest factors affecting FCP is font loading time, since font files tend to be large and take a long time to download — and some browsers will not render text until the font has loaded.

#### Largest Contentful Paint (LCP)

Largest Contentful Paint measures the render time of the largest element visible in the viewport. Such elements include images, videos, elements whose background is loaded from an external URL, and block-level elements containing text or other child elements. The size is determined by the portion visible to the user — if the element extends beyond the viewport, is clipped, or is partially covered by another element, that area is excluded. For resized images, whichever is smaller — the displayed or original size — is used. For text elements, the smallest bounding rectangle enclosing all visible text is used. An important nuance is that an element only counts toward LCP if the browser is actually rendering it — so if a user opens a page in the background, LCP is not recorded until the user focuses on the tab. LCP primarily depends on three factors: server response time, CSS blocking time, and resource load time. If rendering happens client-side and elements are added to the DOM via JavaScript, script compilation and execution time also contribute ([Walton, 2019](https://web.dev/lcp/)).

#### Speed Index (SI)

Speed Index measures how quickly the page content is visually displayed during load. Lighthouse records a video of the page loading and analyses the difference between individual frames. While any improvement to overall page load speed also improves the Speed Index, it is particularly important to minimize main-thread work, reduce JavaScript execution time, and ensure text is displayed while fonts are still downloading, as these have the most direct impact ([web.dev, 2019](https://web.dev/speed-index/)).

#### Time to Interactive (TTI)

A page is considered fully interactive when it displays useful content (as measured by First Contentful Paint), event handlers are attached to most visible elements, and the page responds to user interactions within 50 milliseconds. Measuring TTI is especially important because it is common for pages to focus on rendering at the expense of interactivity — the page may appear fully loaded but still not respond to user input. The biggest positive impact comes from deferring or avoiding unnecessary JavaScript execution.

#### Total Blocking Time (TBT)

Total Blocking Time measures the total time during which the page cannot respond to user interactions such as clicks, taps, or key presses. It is the sum of the blocking portions of long tasks that run between First Contentful Paint and Time to Interactive. Any task taking longer than 50 milliseconds is considered a long task, and the time exceeding 50ms is counted as the blocking portion. TBT can be reduced by optimizing JavaScript execution.

#### First Input Delay (FID)

First Input Delay measures the time between the user's first interaction and the moment the browser is actually able to respond to it. If the main thread is busy parsing and executing JavaScript, it may be unable to run event handlers — since a JavaScript file being loaded might change the behavior of those handlers. Only the first interaction is measured because it gives the user their initial impression of the page, and the biggest interactivity problems typically occur during the loading phase. FID only measures discrete actions such as clicks or key presses; continuous actions like scrolling or zooming are subject to different performance constraints and are often run on a separate thread to avoid delays.

#### Cumulative Layout Shift (CLS)

Cumulative Layout Shift measures the visual stability of a page — specifically, how much page content unexpectedly moves during loading. A high CLS score means elements shift around as the page loads, which can cause users to click the wrong thing or lose their reading position. Common causes include images or ads without explicit dimensions, and dynamically injected content. CLS can be minimized by always specifying `width` and `height` attributes on images and reserving space for late-loading content.
