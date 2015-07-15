json.array!(@actions) do |action|
  json.action_name "Ping"
  json.host "192.168.1.106"
  json.action_args "unfinished array"
end
