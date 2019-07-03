---
layout: post
title:  "Push Notifications with Web Push Protocol"
date:   "2017-03-28 08:49:20.449038"
categories: blog
excerpt: "Push notifications are a great way to interact with the users of your application. However, a major roadblock on integrating push notification to your application is the requirement of signing up and setting up push service server for different browsers that support different protocols for pushing notifications from your application to the client&rsquo;s browser."
---

Push notifications are a great way to interact with the users of your application. However, a major roadblock on integrating push notification to your application is the requirement of signing up and setting up push service server for different browsers that support different protocols for pushing notifications from your application to the client&rsquo;s browser.

* Google Cloud Messaging (GCM) push service - Chrome/Chromium Browser
* Mozilla Push Service - Firefox Browsers

So from integration point of view, there are two ways to do it:

<h2>1) Vendor locked push servers:</h2>

The first option will be signing up to push service providers&rsquo; platforms and implementing push API calls from your application server to these services with the protocol they use to implement push service on their respective browsers.

Google Cloud Messaging (new version: Firebase Cloud Messaging) push service uses GCM/FCM protocol to implement push service to Chrome/Chromium browsers. Mozilla Push Service uses push service URL to push to Firefox browsers.

To implement this way, you need to subscribe and setup keys at all the push servers you want to send push notifications from your application server. This is vendor locked solution and needs multiple configurations at different push services.

<h2>2) Web Push Protocol:</h2>

Web Push Protocol is a standard protocol where sender authentication can done with VAPID (Voluntary Application Server Identification), which essentially is a public/private key pair hosted in your application server that authenticates push notifications to different subscription endpoints (client browser can belong to any vendor - Chrome/Firefox). Chrome and Firefox Browsers support Web Push Protocol based push-notifications with VAPID keys.

<h2>How to do it?</h2>

The user has to approve subscription (&lsquo;Allow&rsquo; when asked) to push notifications in order to receive push notifications on application owner&rsquo;s demand.

<h2>Subscription (user&rsquo;s browser -&gt; app server):</strong></h2>

<img alt="" src="https://s3-ap-southeast-1.amazonaws.com/production-vayu/wiki-uploads/push-notification-subscribe.png" />

<h2><strong>Send notification (app server -&gt; subscription endpoint):</strong></h2>

Once the subscription is confirmed from the user and the subscriptionJSON (push endpoint, encryption public key and encryption authentication key) stored in application&rsquo;s database, this JSON object can be extracted anytime to send push notification to the client.

<img alt="" src="https://s3-ap-southeast-1.amazonaws.com/production-vayu/wiki-uploads/push-notification-notify.png" />

Implementing push notification with VAPID not only eliminates hassle of configuring multiple push server configurations but also makes it easier&nbsp;to manage and control user&#39;s push subscriptions.

<h2>References:</h2>

* <a href="https://tools.ietf.org/html/draft-ietf-webpush-protocol-12">https://tools.ietf.org/html/draft-ietf-webpush-protocol-12</a>
* <a href="https://developers.google.com/web/updates/2016/07/web-push-interop-wins">https://developers.google.com/web/updates/2016/07/web-push-interop-wins</a><br />
* <a href="https://thihara.github.io/Web-Push/">https://thihara.github.io/Web-Push/
"