local function m(msg, matches)
if matches[1] == 'edit' and msg.reply_to_message_id_ ~= 0 and is_sudo(msg) then
local text = matches[2]
tdcli.editMessageText(msg.to.id, msg.reply_to_message_id_, nil, text, 1, 'md')
end
--//////-//Edit Cap-----//+++++
if matches[1] == 'edit' and msg.reply_to_message_id_ ~= 0 and is_sudo(msg) then
local tExt = matches[2]
tdcli.editMessageCaption(msg.to.id, msg.reply_to_message_id_, nil, tExt)
end
end
return {
patterns = { 
"^[!#/](edit) (.*)$",
"^[!#/](edit) (.*)$",
},
run = m,
}

-- by #sorblack :)
-- channel: @PrimeTeam