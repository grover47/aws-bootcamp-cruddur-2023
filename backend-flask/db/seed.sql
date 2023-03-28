-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Frank Turtle','grover47@hotmail.com' , 'turtle47' ,'a64d86d4-8e70-45c5-96f7-5412e9c8ae9a'),
  ('Andrew Bayko','bayko@exampro.co' ,' bayko' ,'MOCK'),
  ('Andrew Brown','andrew@exampro.co' , 'andrewbrown' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )