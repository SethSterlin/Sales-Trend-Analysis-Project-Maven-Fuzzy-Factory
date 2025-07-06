USE mavenfuzzyfactory;

SELECT
	*
FROM
	website_sessions
;

-- Finding Top Traffic Source
SELECT
	utm_source,
	utm_campaign,
    http_referer,
    COUNT(DISTINCT website_session_id) AS sessions
FROM
	website_sessions
WHERE
	created_at < '2012-04-12'
GROUP BY
	utm_source,
	utm_campaign,
    http_referer
ORDER BY COUNT(DISTINCT website_session_id) DESC
;

-- gsearch nonbrand = our major traffic source
-- We need calculate CVR for the campaign gsearch nonbrand, expect it at least 4%

-- calculate CVR for the campaign gsearch nonbrand at 2012-04-14
SELECT
    COUNT(DISTINCT ws.website_session_id) AS sessions,
    COUNT(DISTINCT o.order_id) AS orders,
	COUNT(DISTINCT o.order_id) / COUNT(DISTINCT ws.website_session_id) AS conversion_rate
FROM
	website_sessions ws
    LEFT JOIN
	orders o ON o.website_session_id = ws.website_session_id
WHERE
	ws.created_at < '2012-04-14'
    AND ws.utm_source = 'gsearch'
    AND ws.utm_campaign = 'nonbrand'
;

-- CVR for the campaign gsearch nonbrand at 2012-04-14 = 2.88%
-- Below Expected Rate at 4%, not as expected

-- Traffic Source Trending
SELECT  
    MIN(DATE(created_at)) AS week_start_date,  
    COUNT(DISTINCT website_session_id) AS sessions  
FROM  
    website_sessions  
WHERE  
    created_at < '2012-05-10'
    AND utm_source = 'gsearch'
    AND utm_campaign = 'nonbrand'
GROUP BY 
	YEAR(created_at)
    ,WEEK(created_at)
ORDER BY MIN(DATE(created_at))
;

-- calculate CVR for the campaign gsearch nonbrand at 2012-05-11
SELECT
    ws.device_type,
	COUNT(DISTINCT ws.website_session_id) AS sessions,
    COUNT(DISTINCT o.order_id) AS orders,
	COUNT(DISTINCT o.order_id) / COUNT(DISTINCT ws.website_session_id) AS conversion_rate
FROM
	website_sessions ws
	LEFT JOIN
	orders o ON o.website_session_id = ws.website_session_id
WHERE  
    ws.created_at < '2012-05-11'
    AND ws.utm_source = 'gsearch'
    AND ws.utm_campaign = 'nonbrand'
GROUP BY 
	ws.device_type
ORDER BY COUNT(DISTINCT o.order_id) / COUNT(DISTINCT ws.website_session_id) DESC
;

-- We bid our gsearch nonbrand desktop campaigns up on 2012-05-19
-- You can use 2012-04-15 until the bid change as a baseline.
-- Weekly trend for both desktop and mobile 
SELECT  
    MIN(DATE(created_at)) AS week_start_date,  
    COUNT(DISTINCT CASE WHEN device_type = 'desktop' THEN website_session_id ELSE NULL END) AS desktop_sessions,
    COUNT(DISTINCT CASE WHEN device_type = 'mobile' THEN website_session_id ELSE NULL END) AS mobile_sessions
FROM  
    website_sessions  
WHERE  
    created_at < '2012-06-09'
    AND created_at > '2012-04-15'
    AND utm_source = 'gsearch'
    AND utm_campaign = 'nonbrand'
GROUP BY 
	YEAR(created_at)
    ,WEEK(created_at)
ORDER BY MIN(DATE(created_at))
;