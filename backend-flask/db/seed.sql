-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Charlie Grover', 'charliegrover23@gmail.com', 'charliegrover', '9981b4c7-53b4-4308-b9af-a7dc0ac982e0')
  ('Andrew Brown', 'user@example.com', 'andrewbrown' ,'MOCK'),
  ('Andrew Bayko', 'users@example.com', 'turtle47' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )