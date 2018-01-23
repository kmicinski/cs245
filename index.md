---
layout: mainpage
---

## Upcoming deadlines

<ul class="due-list">
{% for post in site.posts %}
    {% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}
    {% capture duetime %}{{post.due | date: '%s'}}{% endcapture %}
    {% if post.categories contains 'assignment' and duetime > nowunix %}
    <li>
       <span><span class="post-meta"><b>(Due <span itemprop="date">{{ post.due | date: "%b %-d, %Y" }}</span>)</b></span><a class="mainpage-asn-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></span></li>
   {% endif %}
{% endfor %}
</ul>

## Information

<div class="infomatter">
<table class="infotablestyle">
<tr><td>Course Number</td>
    <td>CMSC 311 (Spring 2018) at <a href="https://www.haverford.edu/computer-science/">Haverford College</a></td>
</tr>
<tr><td>Instructor</td>
    <td><a href="http://kmicinski.com">Kristopher Micinski</a></td>
</tr>
<tr>
    <td>Times</td>
    <td>Tu/Thur 11:30-13:00 <i>Lecture</i>  W 11:30 / 12:30 <i>Labs</i></td>
</tr>
<tr>
    <td>Office Hours</td>
    <td>Tu/Thur after class and by appointment</td>
</tr>
</table>
<img class="krispic" src="/assets/img/krisbw.jpg">
</div>
    
## Introduction 

This course will serve as a broad introduction to the field of
computer security from two concurrent perspectives: attacks on
systems, and defenses against those attacks. The goal of this course
will be to help build intuition so that--when designing systems--you
can consider the potential security risks and pick tools that help
minimize those risks. To understand how attackers think, we will learn
about the attacks they employ, such as:

- Memory-based attacks (buffer overrun, access space derandomization, return oriented programming)
- Web attacks (code injection, cross-site request forgery, etc..) and security
- Systems security (passwords and authentication, process isolation)
- Reverse engineering
- Attacks on cryptographic systems and implementations, and basics of SSL/TLS

However, a collection of attacks alone is not sufficient to understand
how to build secure systems. So concurrent with attacks, we will also
learn the theory behind building defenses into our systems.  In labs,
we will dissect a number of real-world attacks (such as Heartbleed or
WannaCry) and reflect upon what could have been done to prevent them,
and how those experiences help inform our choices about system design.

## Course Structure

Please read the [Syllabus]({{ "/syllabus" | prepend: site.baseurl }}) for course information.
