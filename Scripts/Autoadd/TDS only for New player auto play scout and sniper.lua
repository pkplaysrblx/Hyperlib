repeat wait() until game:IsLoaded()
getgenv().IsMultiStrat = true
getgenv().Maps = {["Abandoned City"] = {"Sniper", "Scout", "nil", "nil", "nil"},["Autumn Falling"] = {"Sniper", "Scout", "nil", "nil", "nil"},["Cyber City"] = {"Sniper", "Scout", "nil", "nil", "nil"}}
maplist = {"Abandoned City","Autumn Falling","Cyber City"}
if game.PlaceId == 3260590327 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/asjhxnjfdStratFunJoin", true))()
end
if game.PlaceId == 5591597781 then
    map = game:GetService("ReplicatedStorage").State.Map.Value
    game:GetService("Players").PlayerAdded:Connect(function() --back to lobby if it detected player join the game
        game:GetService("TeleportService"):Teleport(3260590327)
        wait(10)
    end)
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do --back to lobby if there is more than 1 player
        if i==2 then
            game:GetService("TeleportService"):Teleport(3260590327)
            wait(10)
        end
    end
    if not table.find(maplist,map) then
        game:GetService("TeleportService"):Teleport(3260590327)
        return
    end
    if map == maplist[1] then
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))()
TDS:Loadout("Sniper", "Scout", "nil", "nil", "nil")
TDS:Map("Abandoned City", true, "Survival")
TDS:Mode('Normal')
TDS:Place('Scout', -39.07499694824219, 0.3304634094238281, 0.9806077480316162, 0, 0, 4)
TDS:Upgrade(1, 0, 0, 3)
TDS:Upgrade(1, 0, 0, 3)
TDS:Place('Scout', -42.20248031616211, 0.33046531677246094, 1.9874191284179688, 1, 0, 4)
TDS:Upgrade(2, 1, 0, 3)
TDS:Upgrade(2, 2, 0, 4)
TDS:Upgrade(1, 4, 0, 4)
TDS:Upgrade(2, 5, 0, 4)
TDS:Place('Sniper', -31.070594787597656, 7.355474948883057, 7.686827182769775, 6, 0, 3)
TDS:Upgrade(3, 6, 0, 2)
TDS:Upgrade(3, 7, 0, 4)
TDS:Place('Sniper', -28.055469512939453, 7.355474948883057, 7.789340972900391, 7, 0, 3)
TDS:Upgrade(4, 7, 0, 2)
TDS:Upgrade(4, 8, 0, 4)
TDS:Place('Sniper', -30.85226821899414, 7.355474948883057, 10.924602508544922, 9, 1, 0)
TDS:Upgrade(5, 9, 0, 56)
TDS:Upgrade(5, 9, 0, 4)
TDS:Place('Sniper', -27.783836364746094, 7.355474948883057, 10.8696870803833, 10, 0, 57)
TDS:Upgrade(6, 10, 0, 56)
TDS:Upgrade(6, 10, 0, 4)
TDS:Upgrade(4, 11, 0, 3)
TDS:Upgrade(3, 12, 0, 3)
TDS:Place('Sniper', -31.064472198486328, 7.355474948883057, -0.7830929756164551, 13, 0, 3)
TDS:Upgrade(7, 13, 0, 2)
TDS:Upgrade(7, 13, 0, 2)
TDS:Place('Sniper', -28.03425407409668, 7.355474948883057, -0.7524807453155518, 14, 0, 59)
TDS:Upgrade(8, 14, 0, 58)
TDS:Upgrade(8, 14, 0, 4)
TDS:Upgrade(1, 15, 0, 3)
TDS:Upgrade(8, 16, 0, 3)
TDS:Upgrade(7, 17, 0, 3)
TDS:Place('Sniper', -24.964092254638672, 7.355474948883057, -0.8146038055419922, 18, 0, 46)
TDS:Upgrade(9, 18, 0, 45)
TDS:Skip(18, 0, 40)
TDS:Upgrade(9, 18, 0, 4)
TDS:Upgrade(9, 19, 0, 42)
TDS:Skip(19, 0, 40)
TDS:Upgrade(6, 19, 0, 2)
TDS:Skip(20, 0, 40)
TDS:Upgrade(5, 20, 0, 2)
TDS:Place('Sniper', -25.00908851623535, 7.355474948883057, 7.721947193145752, 21, 0, 58)
TDS:Upgrade(10, 21, 0, 57)
TDS:Upgrade(10, 21, 0, 56)
TDS:Place('Sniper', -24.722593307495117, 7.355474948883057, 10.864109992980957, 21, 0, 52)
TDS:Upgrade(11, 21, 0, 51)
TDS:Upgrade(11, 21, 0, 50)
TDS:Skip(21, 0, 39)
TDS:Upgrade(10, 21, 0, 2)
TDS:Place('Sniper', -30.958820343017578, 7.355474948883057, -3.8070762157440186, 22, 0, 57)
TDS:Upgrade(12, 22, 0, 56)
TDS:Upgrade(12, 22, 0, 55)
TDS:Upgrade(11, 22, 0, 22)
TDS:Skip(22, 0, 20)
TDS:Upgrade(12, 22, 0, 4)
TDS:Place('Sniper', -27.9495849609375, 7.355474948883057, -3.829047441482544, 23, 0, 59)
TDS:Upgrade(13, 23, 0, 58)
TDS:Upgrade(13, 23, 0, 55)
TDS:Skip(23, 0, 40)
TDS:Upgrade(13, 23, 0, 4)
TDS:Place('Sniper', -24.851268768310547, 7.355474948883057, -3.923224925994873, 24, 0, 57)
TDS:Upgrade(14, 24, 0, 56)
TDS:Upgrade(14, 24, 0, 56)
TDS:Upgrade(14, 24, 0, 47)
TDS:Skip(24, 0, 40)
TDS:Upgrade(2, 24, 0, 2)
TDS:Place('Sniper', -31.100000381469727, 7.355474948883057, -6.955817699432373, 25, 0, 57)
TDS:Upgrade(15, 25, 0, 56)
TDS:Upgrade(15, 25, 0, 55)
TDS:Upgrade(15, 25, 0, 38)
TDS:Skip(25, 0, 35)
TDS:Place('Sniper', -27.979589462280273, 7.405097961425781, -6.869382381439209, 25, 0, 2)
TDS:Upgrade(16, 26, 1, 0)
TDS:Upgrade(16, 26, 0, 59)
TDS:Upgrade(16, 26, 0, 58)
TDS:Place('Sniper', -24.77677345275879, 7.405134677886963, -6.948060989379883, 26, 0, 55)
TDS:Upgrade(17, 26, 0, 54)
TDS:Upgrade(17, 26, 0, 52)
TDS:Upgrade(17, 26, 0, 3)
TDS:Place('Scout', -28.121417999267578, 0.33046531677246094, 3.5005297660827637, 27, 0, 48)
TDS:Upgrade(18, 27, 0, 47)
TDS:Upgrade(18, 27, 0, 46)
TDS:Upgrade(18, 27, 0, 46)
TDS:Skip(27, 0, 40)
TDS:Upgrade(18, 27, 0, 4)
TDS:Place('Scout', -30.058238983154297, 0.33876416087150574, 0.3970118761062622, 27, 0, 2)
TDS:Upgrade(19, 28, 1, 0)
TDS:Upgrade(19, 28, 0, 59)
TDS:Upgrade(19, 28, 0, 59)
TDS:Place('Scout', -30.940946578979492, 0.3804730474948883, 6.536288738250732, 28, 0, 55)
TDS:Upgrade(20, 28, 0, 54)
TDS:Upgrade(20, 28, 0, 54)
TDS:Upgrade(20, 28, 0, 53)
TDS:Place('Scout', -31.16838264465332, 0.33046483993530273, 3.5104007720947266, 28, 0, 50)
TDS:Upgrade(21, 28, 0, 49)
TDS:Upgrade(21, 28, 0, 49)
TDS:Upgrade(21, 28, 0, 45)
TDS:Upgrade(19, 28, 0, 25)
TDS:Skip(28, 0, 15)
TDS:Upgrade(21, 28, 0, 4)
TDS:Upgrade(20, 29, 0, 58)
TDS:Place('Sniper', -34.19282913208008, 7.355474948883057, 9.721559524536133, 29, 0, 51)
TDS:Upgrade(22, 29, 0, 49)
TDS:Upgrade(22, 29, 0, 45)
TDS:Skip(29, 0, 35)
TDS:Upgrade(22, 29, 0, 4)
TDS:Place('Sniper', -37.31000518798828, 7.355474948883057, 9.743629455566406, 29, 0, 2)
TDS:Upgrade(23, 30, 1, 19)
TDS:Upgrade(23, 30, 1, 19)
TDS:Upgrade(23, 30, 1, 18)
TDS:Place('Scout', -27.874183654785156, 0.33046436309814453, 6.6347174644470215, 30, 1, 12)
TDS:Upgrade(24, 30, 1, 10)
TDS:Upgrade(24, 30, 1, 10)
TDS:Upgrade(24, 30, 1, 9)
TDS:Upgrade(24, 30, 1, 0)
TDS:Skip(30, 0, 54)
TDS:Upgrade(10, 31, 1, 16)
TDS:Place('Scout', -24.832496643066406, 0.33046531677246094, 7.223310470581055, 31, 0, 57)
TDS:Upgrade(25, 31, 0, 56)
TDS:Upgrade(25, 31, 0, 56)
TDS:Upgrade(25, 31, 0, 56)
TDS:Upgrade(25, 31, 0, 56)
TDS:Place('Scout', -24.850080490112305, 0.3410162925720215, 3.987905979156494, 31, 0, 54)
TDS:Skip(31, 0, 54)
TDS:Upgrade(26, 31, 0, 5)
TDS:Upgrade(26, 31, 0, 4)
TDS:Upgrade(26, 31, 0, 4)
TDS:Upgrade(26, 31, 0, 3)
TDS:Place('Scout', -24.86107635498047, 0.33046388626098633, 0.7529282569885254, 32, 1, 20)
TDS:Upgrade(27, 32, 1, 19)
TDS:Upgrade(27, 32, 1, 18)
TDS:Upgrade(27, 32, 1, 13)
TDS:Upgrade(27, 32, 1, 0)
TDS:Skip(32, 0, 54)
TDS:Upgrade(9, 32, 0, 4)
TDS:Upgrade(11, 33, 0, 55)
TDS:Skip(33, 0, 54)
    end
    if map == maplist[2] then
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))()
TDS:Loadout("Sniper", "Scout", "nil", "nil", "nil")
TDS:Map("Autumn Falling", true, "Survival")
TDS:Mode('Normal')
TDS:Place('Scout', -57.75408172607422, 3.0020735263824463, 0.39483070373535156, 0, 0, 4)
TDS:Upgrade(1, 0, 0, 3)
TDS:Upgrade(1, 0, 0, 3)
TDS:Skip(1, 0, 40)
TDS:Place('Scout', -58.696781158447266, 2.998499870300293, -6.102048873901367, 1, 0, 4)
TDS:Upgrade(2, 1, 0, 3)
TDS:Upgrade(2, 2, 0, 4)
TDS:Upgrade(1, 4, 0, 4)
TDS:Upgrade(2, 5, 0, 4)
TDS:Place('Sniper', -48.13981628417969, 5.350655555725098, 9.999593734741211, 6, 0, 4)
TDS:Upgrade(3, 6, 0, 3)
TDS:Upgrade(3, 7, 0, 4)
TDS:Place('Sniper', -51.36351013183594, 5.350902080535889, 10.113929748535156, 7, 0, 2)
TDS:Upgrade(4, 8, 0, 59)
TDS:Upgrade(4, 8, 0, 4)
TDS:Place('Sniper', -47.74188995361328, 5.346182823181152, 6.948694229125977, 8, 0, 2)
TDS:Upgrade(5, 9, 0, 56)
TDS:Upgrade(5, 9, 0, 4)
TDS:Place('Sniper', -50.85082244873047, 5.347923755645752, 6.979887962341309, 9, 0, 2)
TDS:Upgrade(6, 10, 0, 55)
TDS:Upgrade(6, 10, 0, 4)
TDS:Upgrade(5, 11, 0, 4)
TDS:Upgrade(3, 12, 0, 4)
TDS:Upgrade(4, 14, 0, 50)
TDS:Upgrade(6, 15, 0, 59)
TDS:Place('Sniper', -18.576454162597656, 6.173782825469971, -3.0630412101745605, 16, 1, 0)
TDS:Upgrade(7, 16, 0, 58)
TDS:Upgrade(7, 16, 0, 58)
TDS:Upgrade(7, 16, 0, 3)
TDS:Place('Sniper', -21.583820343017578, 6.174406051635742, -0.04475855827331543, 17, 0, 57)
TDS:Upgrade(8, 17, 0, 55)
TDS:Upgrade(8, 17, 0, 4)
TDS:Skip(18, 0, 40)
TDS:Upgrade(8, 18, 0, 4)
TDS:Place('Sniper', -18.442134857177734, 6.176270961761475, 0.033279359340667725, 18, 0, 2)
TDS:Upgrade(9, 19, 1, 0)
TDS:Upgrade(9, 19, 1, 0)
TDS:Skip(19, 0, 40)
TDS:Upgrade(9, 19, 0, 4)
TDS:Place('Sniper', -21.29987907409668, 6.179450035095215, 3.0546748638153076, 20, 1, 0)
TDS:Upgrade(10, 20, 0, 59)
TDS:Upgrade(10, 20, 0, 56)
TDS:Skip(20, 0, 40)
TDS:Upgrade(10, 20, 0, 4)
TDS:Place('Scout', -34.86088562011719, 3.0024573802948, 3.0633020401000977, 21, 0, 59)
TDS:Upgrade(11, 21, 0, 58)
TDS:Upgrade(11, 21, 0, 58)
TDS:Upgrade(11, 21, 0, 52)
TDS:Skip(21, 0, 40)
TDS:Upgrade(11, 21, 0, 2)
TDS:Place('Sniper', -18.23805046081543, 6.177949905395508, 3.0422048568725586, 22, 0, 41)
TDS:Skip(22, 0, 40)
TDS:Upgrade(12, 22, 0, 5)
TDS:Upgrade(12, 22, 0, 3)
TDS:Upgrade(12, 22, 0, 3)
TDS:Place('Sniper', -15.232658386230469, 6.176024436950684, 2.6451988220214844, 23, 0, 50)
TDS:Upgrade(13, 23, 0, 49)
TDS:Upgrade(13, 23, 0, 48)
TDS:Upgrade(13, 23, 0, 20)
TDS:Skip(23, 0, 15)
TDS:Place('Scout', -41.03995132446289, 3.0024566650390625, 2.5639209747314453, 23, 0, 2)
TDS:Upgrade(14, 24, 1, 0)
TDS:Upgrade(14, 24, 0, 59)
TDS:Upgrade(14, 24, 0, 58)
TDS:Upgrade(14, 24, 0, 48)
TDS:Skip(24, 0, 35)
TDS:Place('Scout', -34.87041473388672, 3.004866600036621, 0.01809406280517578, 24, 0, 2)
TDS:Upgrade(15, 25, 1, 0)
TDS:Upgrade(15, 25, 1, 0)
TDS:Upgrade(15, 25, 0, 59)
TDS:Upgrade(15, 25, 0, 58)
TDS:Place('Sniper', -18.358152389526367, 11.705031394958496, 1.4814985990524292, 25, 0, 50)
TDS:Upgrade(16, 25, 0, 48)
TDS:Upgrade(16, 25, 0, 46)
TDS:Skip(25, 0, 40)
TDS:Upgrade(16, 25, 0, 4)
TDS:Place('Sniper', -17.485857009887695, 11.705038070678711, -1.5537199974060059, 26, 0, 51)
TDS:Upgrade(17, 26, 0, 50)
TDS:Upgrade(17, 26, 0, 49)
TDS:Upgrade(17, 26, 0, 5)
TDS:Place('Sniper', -15.32883071899414, 11.704943656921387, 4.435665607452393, 27, 0, 59)
TDS:Upgrade(18, 27, 0, 57)
TDS:Upgrade(18, 27, 0, 56)
TDS:Upgrade(18, 27, 0, 56)
TDS:Place('Sniper', -14.441608428955078, 11.704975128173828, -1.5926320552825928, 27, 0, 42)
TDS:Upgrade(19, 27, 0, 40)
TDS:Skip(27, 0, 40)
TDS:Upgrade(19, 27, 0, 5)
TDS:Upgrade(19, 27, 0, 3)
TDS:Place('Sniper', -11.41726303100586, 11.704904556274414, -0.7253857851028442, 28, 0, 56)
TDS:Upgrade(20, 28, 0, 54)
TDS:Upgrade(20, 28, 0, 54)
TDS:Upgrade(20, 28, 0, 53)
TDS:Place('Sniper', -12.293573379516602, 11.7048978805542, 2.3397939205169678, 28, 0, 45)
TDS:Upgrade(21, 28, 0, 44)
TDS:Upgrade(21, 28, 0, 43)
TDS:Skip(28, 0, 40)
TDS:Upgrade(21, 28, 0, 4)
TDS:Upgrade(16, 29, 0, 35)
TDS:Target(11, 29, 0, 25)
TDS:Target(11, 29, 0, 25)
TDS:Target(11, 29, 0, 24)
TDS:Target(11, 29, 0, 13)
TDS:Target(11, 29, 0, 13)
TDS:Target(11, 29, 0, 12)
TDS:Target(11, 29, 0, 11)
TDS:Skip(29, 0, 5)
TDS:Upgrade(18, 29, 0, 3)
TDS:Target(15, 30, 1, 12)
TDS:Target(15, 30, 1, 12)
TDS:Target(15, 30, 1, 11)
TDS:Upgrade(21, 30, 0, 56)
TDS:Skip(30, 0, 54)
TDS:Upgrade(19, 31, 1, 12)
TDS:Skip(31, 0, 54)
TDS:Upgrade(20, 31, 0, 4)
TDS:Upgrade(17, 32, 0, 59)
TDS:Skip(32, 0, 54)
TDS:Upgrade(13, 32, 0, 2)
TDS:Skip(33, 0, 54)
TDS:Upgrade(12, 33, 0, 4)
    end
    if map == maplist[3] then
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))()
TDS:Loadout("Sniper", "Scout", "nil", "nil", "nil")
TDS:Map("Cyber City", true, "Survival")
TDS:Mode('Normal')
TDS:Place('Scout', 15.005990028381348, 0.7886910438537598, -0.13536834716796875, 0, 0, 4)
TDS:Upgrade(1, 0, 0, 3)
TDS:Upgrade(1, 0, 0, 3)
TDS:Place('Scout', 18.01137351989746, 0.7886910438537598, -0.11618804931640625, 1, 0, 4)
TDS:Upgrade(2, 1, 0, 3)
TDS:Upgrade(2, 2, 0, 2)
TDS:Upgrade(1, 4, 0, 4)
TDS:Upgrade(2, 5, 0, 2)
TDS:Place('Sniper', 5.58305549621582, 3.7636990547180176, 5.720276832580566, 6, 0, 4)
TDS:Upgrade(3, 6, 0, 3)
TDS:Upgrade(3, 7, 0, 4)
TDS:Place('Sniper', 5.483266830444336, 3.7636990547180176, 8.764264106750488, 7, 0, 3)
TDS:Upgrade(4, 7, 0, 2)
TDS:Upgrade(4, 8, 0, 4)
TDS:Place('Sniper', 5.510729789733887, 3.7636990547180176, -0.7663421630859375, 8, 0, 2)
TDS:Upgrade(5, 9, 0, 54)
TDS:Upgrade(5, 9, 0, 3)
TDS:Place('Sniper', 5.5783538818359375, 3.7636990547180176, -3.8833742141723633, 10, 1, 0)
TDS:Upgrade(6, 10, 0, 55)
TDS:Upgrade(6, 10, 0, 4)
TDS:Upgrade(6, 11, 0, 3)
TDS:Upgrade(5, 12, 0, 4)
TDS:Upgrade(3, 14, 0, 46)
TDS:Upgrade(4, 15, 0, 57)
TDS:Upgrade(1, 16, 0, 2)
TDS:Place('Sniper', 2.2684454917907715, 3.7636990547180176, -4.106996536254883, 17, 0, 3)
TDS:Upgrade(7, 17, 0, 3)
TDS:Upgrade(7, 17, 0, 2)
TDS:Upgrade(7, 18, 1, 0)
TDS:Skip(18, 0, 40)
TDS:Place('Sniper', 2.254861831665039, 3.7636990547180176, -1.041304588317871, 18, 0, 3)
TDS:Upgrade(8, 18, 0, 2)
TDS:Upgrade(8, 18, 0, 2)
TDS:Skip(19, 0, 40)
TDS:Upgrade(8, 19, 0, 4)
TDS:Place('Sniper', 2.465759754180908, 3.7636990547180176, 5.775961875915527, 20, 1, 0)
TDS:Upgrade(9, 20, 0, 59)
TDS:Upgrade(9, 20, 0, 58)
TDS:Skip(20, 0, 40)
TDS:Upgrade(9, 20, 0, 4)
TDS:Place('Sniper', 2.154918670654297, 3.7636990547180176, 8.861541748046875, 20, 0, 2)
TDS:Upgrade(10, 20, 0, 2)
TDS:Upgrade(10, 21, 1, 0)
TDS:Skip(21, 0, 35)
TDS:Upgrade(10, 21, 0, 3)
TDS:Upgrade(2, 22, 0, 47)
TDS:Place('Sniper', -12.710721015930176, 3.7636990547180176, -0.9674084186553955, 22, 0, 32)
TDS:Upgrade(11, 22, 0, 31)
TDS:Upgrade(11, 22, 0, 29)
TDS:Skip(22, 0, 20)
TDS:Upgrade(11, 22, 0, 4)
TDS:Place('Sniper', -12.837565422058105, 3.7636990547180176, -4.0801920890808105, 22, 0, 2)
TDS:Upgrade(12, 22, 0, 2)
TDS:Upgrade(12, 23, 1, 0)
TDS:Skip(23, 0, 40)
TDS:Upgrade(12, 23, 0, 4)
TDS:Place('Sniper', -12.753490447998047, 3.7636990547180176, 5.6359663009643555, 23, 0, 3)
TDS:Upgrade(13, 23, 0, 2)
TDS:Upgrade(13, 23, 0, 2)
TDS:Upgrade(13, 24, 0, 53)
TDS:Place('Sniper', -12.801535606384277, 3.7636990547180176, 8.68720531463623, 24, 0, 48)
TDS:Upgrade(14, 24, 0, 47)
TDS:Upgrade(14, 24, 0, 42)
TDS:Skip(24, 0, 40)
TDS:Upgrade(14, 24, 0, 4)
TDS:Place('Sniper', -15.879501342773438, 3.7636990547180176, -4.721539497375488, 25, 0, 59)
TDS:Upgrade(15, 25, 0, 58)
TDS:Upgrade(15, 25, 0, 57)
TDS:Skip(25, 0, 35)
TDS:Upgrade(15, 25, 0, 3)
TDS:Place('Sniper', -15.87255859375, 3.7636990547180176, -1.6862702369689941, 25, 0, 3)
TDS:Upgrade(16, 25, 0, 2)
TDS:Upgrade(16, 25, 0, 2)
TDS:Upgrade(16, 26, 0, 59)
TDS:Place('Sniper', -15.78886604309082, 3.7636990547180176, 5.68613338470459, 26, 0, 50)
TDS:Upgrade(17, 26, 0, 50)
TDS:Upgrade(17, 26, 0, 4)
TDS:Upgrade(17, 26, 0, 3)
TDS:Place('Sniper', -16.008459091186523, 3.7636990547180176, 8.725719451904297, 27, 1, 0)
TDS:Upgrade(18, 27, 0, 59)
TDS:Upgrade(18, 27, 0, 58)
TDS:Upgrade(18, 27, 0, 43)
TDS:Skip(27, 0, 40)
TDS:Place('Sniper', 1.2226858139038086, 8.80491828918457, 17.701900482177734, 27, 0, 3)
TDS:Upgrade(19, 27, 0, 2)
TDS:Upgrade(19, 27, 0, 2)
TDS:Upgrade(19, 28, 1, 0)
TDS:Place('Sniper', 4.230328559875488, 8.80491828918457, 17.784521102905273, 28, 0, 56)
TDS:Upgrade(20, 28, 0, 55)
TDS:Upgrade(20, 28, 0, 54)
TDS:Upgrade(20, 28, 0, 38)
TDS:Skip(28, 0, 15)
TDS:Upgrade(20, 28, 0, 3)
TDS:Place('Scout', -16.30597686767578, 1.0386995077133179, 1.9993877410888672, 29, 0, 57)
TDS:Upgrade(21, 29, 0, 56)
TDS:Upgrade(21, 29, 0, 56)
TDS:Upgrade(21, 29, 0, 51)
TDS:Skip(29, 0, 40)
TDS:Upgrade(21, 29, 0, 4)
TDS:Upgrade(19, 30, 0, 57)
TDS:Skip(30, 0, 54)
TDS:Place('Scout', -15.166247367858887, 1.2886995077133179, 2.0452847480773926, 30, 0, 4)
TDS:Upgrade(22, 30, 0, 3)
TDS:Upgrade(22, 30, 0, 2)
TDS:Upgrade(22, 30, 0, 2)
TDS:Upgrade(22, 31, 1, 20)
TDS:Place('Sniper', 1.095576286315918, 8.80491828918457, 20.90636444091797, 31, 1, 10)
TDS:Upgrade(23, 31, 1, 9)
TDS:Upgrade(23, 31, 1, 9)
TDS:Upgrade(23, 31, 1, 4)
TDS:Skip(31, 0, 54)
TDS:Skip(32, 0, 54)
    end
end