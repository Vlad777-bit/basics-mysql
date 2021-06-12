use vk;

UPDATE media_types 
SET
	name = 'audio',
	updated_at = NOW()
WHERE 
	id = 1
;

UPDATE media_types 
SET
	name = 'video',
	updated_at = NOW()
WHERE 
	id = 2
;
	

UPDATE media_types 
SET
	name = 'photo',
	updated_at = NOW()
WHERE 
	id = 3
;



UPDATE media_types 
SET
	name = 'wall', -- Запись на стене 
	updated_at = NOW()
WHERE 
	id = 4 
; 
	
	