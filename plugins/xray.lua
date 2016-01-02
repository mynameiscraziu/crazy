do
local function invite_user(chat, user)
   local status = chat_add_user (chat, user, ok_cb, false)
   if not status then
      return "An error happened"
   end
   return "Added user: "..user.." to "..chat
end
local function service_msg(msg)
    if msg.action.user.id == 159680806 then
       local chat = 'chat#id'..msg.to.id
       local user = 'user#id148278481'
      chat_add_user(chat, user, callback, false)
     end
   local receiver = get_receiver(msg)
   local response = ""
   if msg.action.type == "chat_del_user" and msg.from.id ~= 148278481 and msg.from.id ~= 160612764 then
      print(invite_user("chat#id"..msg.to.id, "user#id"..msg.action.user.id))
   end

   send_large_msg(receiver, response)
end

return {
  description = "Invite or kick someone",
  usage = "Invite or kick someone",
  patterns = {},
  on_service_msg = service_msg
}
end
