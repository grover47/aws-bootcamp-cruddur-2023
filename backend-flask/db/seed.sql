-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Charlie Grover','charliegrover23@gmail.com' , 'charliegrover' ,'9981b4c7-53b4-4308-b9af-a7dc0ac982e0'),
  ('Andrew Bayko','bayko@exampro.co' , 'bayko' ,'MOCK'),
  ('andrew@exampro.co', 'Andrew Brown', 'andrewbrown' ,'7659c102-7ad4-44bd-bdc3-208f934d1f41');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )