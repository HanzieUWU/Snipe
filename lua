local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/HanzieUWU/HanzieUWU/main/Lib"))()

_G.Discount = 0
_G.Balance = 0
_G.NewItemBalance = 0


function webhook(TITLE, DESC, Eweb)
    local EUrl
    if Eweb == "??A" then
         EUrl = "https://discord.com/api/webhooks/984484252878008343/zOFKiGWDfaQiczjgjOVnSh6oInsoQ-Q-LD6e-b-zNhlogP4iXNNGqxHkGnnEFWafuYPT"
    else
        EUrl = Eweb
        end
   syn.request({
       Url = EUrl,
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json"
       },
       Body = game:GetService("HttpService"):JSONEncode({
           embeds = {{
               title =  tostring(TITLE),
               description = tostring(DESC)
           }}
       })
   })
end

if syn then

syn.request({
  Url = "http://127.0.0.1:6463/rpc?v=1",
  Method = "POST",
  Headers = {
      ["Content-Type"] = "application/json",
      ["Origin"] = "https://discord.com"
  },
  Body = game:GetService("HttpService"):JSONEncode({
      cmd = "INVITE_BROWSER",
      args = {
          code = "kYUjKnPkYD"
      },
      nonce = game:GetService("HttpService"):GenerateGUID(false)
  }),
})
end



local GUI = Lib:Create{
    Name = "Hanzie Hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Lib.Themes.Dark,
    Link = "Join the discord server for key!"
}

--if game.PlaceId == 9737855826 then
    
local FourthTab = GUI:Tab{
	Name = "Supported game",
	Icon = "rbxassetid://9751355172"

}

--[[FourthTab:Toggle{
	Name = "Buy limiteds",
	StartingState = false,
	Description = nil,
	Callback = function(state)
	    BuyLimitedItems = state
	    
	    end
}]]



FourthTab:Slider{
	Name = "Limited sniper budget",
	Default = 1,
	Min = 1,
	Max = 100000,
	Callback = function(state)
	    Balance = state
	    end
}


FourthTab:Slider{
	Name = "Limited sniper Discount",
	Default = 1,
	Min = 1,
	Max = 99,
	Callback = function(state)
	    _G.Discount = state
	    end
}

FourthTab:Slider{
	Name = "New Item sniper budget",
	Default = 1,
	Min = 1,
	Max = 100000,
	Callback = function(state)
	    _G.NewItemBalance = state
	    end
}

--[[FourthTab:Textbox{
	Name = "Webhook",
	Callback = function(text)
	    web = text
end

}]]
FourthTab:Button{
	Name = "Start (Enter all your settings first!)",
	Description = nil,
	Callback = function()
	    while wait() do
    pcall(function()
        
loadstring(game:HttpGet(('https://raw.githubusercontent.com/HanzieUWU/Snipe/main/lua'),true))()
    end)
    
end
end
}
--end



