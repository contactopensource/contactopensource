# Companies dataset


Free Dataset - Companies
Overview

Updated: 05/01/2023

This collection of data includes over fifteen million global companies. The dataset has information such as a company's name, website domain, size, year founded, industry, city/state, country and the handle of their LinkedIn URL.

To download the data, create a free account.

Note: This is a raw, source dataset. This means that the website domains aren't always reliable - a domain may not resolve (e.g. company no longer exists), the domain redirects (e.g. company was acquired), or the domain is a free email provider (e.g. gmail.com). If resolving the domain is important to your use case, our paid datasets handle these issues.
Fields
Field	Field Type	Description	Example
handle	string	This is the unique handle from the company's LinkedIn profile. To get the full URL simply prepend "https://linkedin.com/".	company/uber-com
name	string	The company's name.	Uber
website	string	This company's website domain name.	uber.com
industry	enum (string)	The self-reported industry - the enum is from LinkedIn's standard industries.	Software Development
size	enum (string)	A range representing the number of people working at the company - the enum is from LinkedIn's standard size ranges.	10,001+
type	enum (string)	The type of business entity - the enum is from LinkedIn's standard business types.	Public Company
founded	integer	The year the company was founded.	2009
city	string	The city of the company's current headquarters.	San Francisco
state	string	The state/region of the company's current headquarters.	California
country_code	enum (string)	The ISO alpha-2 country code of the company's current headquarters.	US
Stats

This section provides field-level summary statistics for the dataset.
Field	Count	Numeric	Fill Percentage
handle	15,948,996	15948996	100.00%
name	15,947,110	15947110	99.99%
website	12,699,444	12699444	79.63%
industry	14,614,095	14614095	91.63%
size	13,293,910	13293910	83.35%
type	10,695,118	10695118	67.06%
founded	7,908,732	7908732	49.59%
city	12,793,394	12793394	80.21%
state	11,424,981	11424981	71.63%
country_code	12,987,046	12987046	81.43%
Field Comparison to Paid Dataset

Below is how the free dataset compares to our paid datasets and API.
API Field	Free Dataset Field	Free	Paid
name	name	X	X
legalName			X
aliases			X
url			X
domain	website	X	X
domainAliases			X
logo			X
tags			X
tech			X
phone			X
ticker			X
type	type	X	X
foundedYear	founded	X	X
description			X
emailProvider			X
metrics.raised			X
metrics.employees			X
metrics.employeesRange	size	X	X
metrics.marketCap			X
metrics.annualRevenue			X
metrics.estimatedAnnualRevenue			X
metrics.trancoRank			X
metrics.alexaUsRank			X
metrics.alexaGlobalRank			X
category.sector			X
category.industryGroup			X
category.industry			X
category.subIndustry			X
category.naicsCode			X
linkedin.handle	handle	X	X
linkedin.industry	industry	X	X
facebook.handle			X
twitter.id			X
twitter.bio			X
twitter.site			X
twitter.avatar			X
twitter.handle			X
twitter.location			X
twitter.followers			X
twitter.following			X
crunchbase.handle			X
location			X
geo.streetNumber			X
geo.streetName			X
geo.subPremise			X
geo.city	city	X	X
geo.state	state	X	X
geo.stateCode			X
geo.postalCode			X
geo.country			X
geo.countryCode	country_code	X	X
indexedAt			X
