---
title: Vayu Technology
layout: default
---

<section class="hero">
  <div class="container">
    <span class="hero-label">Software &amp; Engineering</span>
    <h1>We build products<br>and write about <em>the craft</em></h1>
    <p class="hero-description">Vayu Technology is a software company shipping small, focused products. We share what we learn along the way.</p>
  </div>
</section>

<section class="section">
  <div class="container">
    <div class="section-header">
      <h2 class="section-title">Latest from the blog</h2>
      <a href="/blog" class="section-link">All posts &rarr;</a>
    </div>
    <div class="posts-grid">
      {% for post in site.posts limit:6 %}
      <article class="post-card">
        <span class="post-card-meta">{{ post.date | date: '%b %d, %Y' }}</span>
        <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
        <p class="post-card-excerpt">{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
        <a href="{{ post.url }}" class="post-card-read">Read</a>
      </article>
      {% endfor %}
    </div>
  </div>
</section>
