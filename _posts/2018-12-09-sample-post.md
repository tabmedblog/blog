---
title:  "Sample post"
author: "Alexis Guinebertiere"
last_edited: 2018-12-10
categories: Technical
layout: post
comments: true
---

This post is post to showcase formatting options. Source can found [here](https://raw.githubusercontent.com/tabmedblog/blog/master/_posts/2018-12-09-sample-post.md).
This, by the way, was an example of how to make an hyperlink.

# Sample formatting below

## This is a second-level section

### This is a third-level section

A table of data:

| row_id | effective_date | end_date | member_id | plan_id |
|--------|----------------|----------|-----------|---------|
| 1      | 1/1/2018       | 1/1/2019 | M1        | P1      |
| 2      | 1/1/2018       | 1/1/2019 | M2        | P1      |

First we can use `inline code`

Then we can use

	Blocks of code
	Like this block

Another type of

> Block code

## Hyperlink to file

Share your file on dropbox, then create a link. Download the [HCAPSDemo.zip](https://www.dropbox.com/s/euknrodj76i059z/HCAPS%20Demo.zip?dl=1) file.

If you are using dropbox, make sure to have a `?dl=1` at the end of your url if you want the link to trigger a download. If you have `?dl=0`, this will take you to a preview of the file on dropbox's website.

## Inserting an image

This is a partial screenshot:

![partial screenshot](https://www.dropbox.com/s/2382wbaf0x2at5d/Screen%20Shot%202018-12-11%20at%209.44.02%20AM.png?dl=1)

If you are using dropbox, make sure to have a `?dl=1` at the end of your url, otherwise dropbox will take you to a preview of the file *in their website*, which is not what you want for an image.

## Inserting a viz from Tableau Public

As you can see, when designing a workbook for the blog, you'll want to keep it fairly skinny.

{% tableauviz https://public.tableau.com/views/KnowYourBlood/KonwYourBlood?:embed=y&:embed_code_version=3&:loadOrderID=0&:display_count=yes id:1 width:100% height:600px %}


