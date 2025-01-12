
CREATE VIEW Webinar_information AS
	SELECT
		webinar_id as webinar_id,
		webinar_name as name,
		webinar_description as description,
		tutor_id as tutor_id,
		translator_id as translator_id,
		publish_date as start_time,
		webinar_duration as duration,
		meeting_url as meeting_url,
		LANGUAGES.language_name as language,
		price as price
	FROM WEBINARS
    join LANGUAGES on WEBINARS.language_id = LANGUAGES.language_id
    left join Products  on WEBINARS.webinar_id = product_id


CREATE VIEW Webinar_free_entry AS
	SELECT *
	FROM Webinar_information wi
	where price = 0
;

CREATE VIEW Webinar_available AS
	SELECT
		*
	FROM Webinar_information
	WHERE start_time >= GETDATE()