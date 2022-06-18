local dis = getgenv().Discount
local Balance = getgenv().Balance
local NewItemBalance = getgenv().NewItemBalance

print(dis)
print(Balance)
print(NewItemBalance)


local function Loop()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.RequestCatalog:InvokeServer()) do
local Eprice
local namee = v.name

print("fetching info : "..v.name)
       local aa = v.price/v.RAP*100
        aa = 100 - aa
if v.price <= Balance and aa >= dis and game.Players.LocalPlayer.Tokens.Value >= v.price and v.RAP > v.price and game.ReplicatedStorage.Remotes.RequestItemInfo:InvokeServer(v.name).status ~= "new" then
Eprice = v.price
print(v.name)
for i,v in pairs(game.ReplicatedStorage.Remotes.RequestItemInfo:InvokeServer(v.name).listings[1]) do
if i == "id" then
setclipboard(v)

local args = {
    [1] = namee,
    [2] = v
}

game:GetService("ReplicatedStorage").Remotes.PurchaseItemListing:InvokeServer(unpack(args))

end
end
end
if v.price <= NewItemBalance and game.Players.LocalPlayer.Tokens.Value >= v.price and game:GetService("ReplicatedStorage").Remotes.RequestItemInfo:InvokeServer(v.name).status == "new" then
    print(v.name)
    Eprice = v.price
    game:GetService("ReplicatedStorage").Remotes.Purchaseltem:InvokeServer(v.name)
    print("aaaaaaa")
end
end
return
end
while true do
    wait(0.5)
    pcall(function()
Loop()
end)
end
