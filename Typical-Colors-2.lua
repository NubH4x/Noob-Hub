local a=loadstring(game:HttpGet('https://raw.githubusercontent.com/NubH4x/UI-Librarys/main/Aika-Library.lua'))()local b=a:CreateWindow("Typical Colors 2")local c=b:CreateFolder("Functions")c:Button("ESP",function()local d={textsize=8,colour=0,0,0}local c=Instance.new("BillboardGui")local e=Instance.new("TextLabel",c)c.Name="Cracked esp"c.ResetOnSpawn=false;c.AlwaysOnTop=true;c.LightInfluence=0;c.Size=UDim2.new(1.75,0,1.75,0)e.BackgroundColor3=Color3.fromRGB(0,0,0)e.Text=""e.Size=UDim2.new(0.0001,0.00001,0.0001,0.00001)e.BorderSizePixel=4;e.BorderColor3=Color3.new(d.colour)e.BorderSizePixel=0;e.Font="GothamSemibold"e.TextSize=d.textsize;e.TextColor3=Color3.fromRGB(d.colour)game:GetService("RunService").RenderStepped:Connect(function()for f,g in pairs(game:GetService("Players"):GetPlayers())do if g~=game:GetService("Players").LocalPlayer and g.Character.Head:FindFirstChild("Cracked esp")==nil then e.Text="{"..g.Name.."}"c:Clone().Parent=g.Character.Head end end end)ALLYCOLOR={0,0,0}ENEMYCOLOR={0,0,0}TRANSPARENCY=0.5;HEALTHBAR_ACTIVATED=true;function createFlex()players=game:GetService("Players")faces={"Front","Back","Bottom","Left","Right","Top"}currentPlayer=nil;lplayer=players.LocalPlayer;players.PlayerAdded:Connect(function(h)currentPlayer=h;h.CharacterAdded:Connect(function(i)createESP(i)end)end)function checkPart(j)if(j:IsA("Part")or j:IsA("MeshPart"))and j.Name~="HumanoidRootPart"then return true end end;function actualESP(j)for k=0,5 do surface=Instance.new("SurfaceGui",j)surface.Face=Enum.NormalId[faces[k+1]]surface.AlwaysOnTop=true;frame=Instance.new("Frame",surface)frame.Size=UDim2.new(1,0,1,0)frame.BorderSizePixel=0;frame.BackgroundTransparency=TRANSPARENCY;if currentPlayer.Team==players.LocalPlayer.Team then frame.BackgroundColor3=Color3.new(ALLYCOLOR[1],ALLYCOLOR[2],ALLYCOLOR[3])else frame.BackgroundColor3=Color3.new(ENEMYCOLOR[1],ENEMYCOLOR[2],ENEMYCOLOR[3])end end end;function createHealthbar(l)board=Instance.new("BillboardGui",l)board.Name="total"board.Size=UDim2.new(1,0,1,0)board.StudsOffset=Vector3.new(3,1,0)board.AlwaysOnTop=true;bar=Instance.new("Frame",board)bar.BackgroundColor3=Color3.new(255,0,0)bar.BorderSizePixel=0;bar.Size=UDim2.new(0.2,0,4,0)bar.Name="total2"health=Instance.new("Frame",bar)health.BackgroundColor3=Color3.new(0,255,0)health.BorderSizePixel=0;health.Size=UDim2.new(1,0,l.Parent.Humanoid.Health/100,0)l.Parent.Humanoid.Changed:Connect(function(m)l.total.total2.Frame.Size=UDim2.new(1,0,l.Parent.Humanoid.Health/100,0)end)end;function createESP(n)bugfix=n:WaitForChild("Head")for k,o in pairs(n:GetChildren())do if checkPart(o)then actualESP(o)end end;if HEALTHBAR_ACTIVATED then createHealthbar(n:WaitForChild("HumanoidRootPart"))end end;for k,p in pairs(players:GetChildren())do if p~=players.LocalPlayer then currentPlayer=p;createESP(p.Character)p.CharacterAdded:Connect(function(i)createESP(i)end)end end end;createFlex()end)c:Button("Walkspeed",function()_G.WS="100"local d=game:GetService("Players").LocalPlayer.Character.Humanoid;d:GetPropertyChangedSignal("WalkSpeed"):Connect(function()d.WalkSpeed=_G.WS end)d.WalkSpeed=_G.WS end)c:Button("Infinite Jump",function()_G.infinjump=true;local d=game:GetService("Players").LocalPlayer;local c=d:GetMouse()c.KeyDown:connect(function(e)if _G.infinjump then if e:byte()==32 then Humanoid=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")Humanoid:ChangeState("Jumping")wait(0.1)Humanoid:ChangeState("Seated")end end end)local d=game:GetService("Players").LocalPlayer;local c=d:GetMouse()c.KeyDown:connect(function(e)e=e:lower()if e=="r"then if _G.infinjump==true then _G.infinjump=false else _G.infinjump=true end end end)end)c:Button("Hitbox Extender",function()function getplrsname()for d,c in pairs(game:GetChildren())do if c.ClassName=="Players"then return c.Name end end end;local e=getplrsname()local f=game[e].LocalPlayer;coroutine.resume(coroutine.create(function()while wait(1)do coroutine.resume(coroutine.create(function()for g,c in pairs(game[e]:GetPlayers())do if c.Name~=f.Name and c.Character then c.Character.RightUpperLeg.CanCollide=false;c.Character.RightUpperLeg.Transparency=10;c.Character.RightUpperLeg.Size=Vector3.new(13,13,13)c.Character.LeftUpperLeg.CanCollide=false;c.Character.LeftUpperLeg.Transparency=10;c.Character.LeftUpperLeg.Size=Vector3.new(13,13,13)c.Character.HeadHB.CanCollide=false;c.Character.HeadHB.Transparency=10;c.Character.HeadHB.Size=Vector3.new(13,13,13)c.Character.HumanoidRootPart.CanCollide=false;c.Character.HumanoidRootPart.Transparency=10;c.Character.HumanoidRootPart.Size=Vector3.new(13,13,13)end end end))end end))end)local c=b:CreateFolder("AimBot")c:Button("AimBot [Torso]",function()PLAYER=game.Players.LocalPlayer;MOUSE=PLAYER:GetMouse()CC=game.Workspace.CurrentCamera;_G.AIM_AT='UpperTorso'_G.BIND=101;function GetNearestPlayerToMouse()local q={}local r={}local s={25}for k,t in pairs(game.Players:GetPlayers())do if t~=PLAYER then table.insert(q,t)end end;for k,t in pairs(q)do if t and t.Character~=nil and t.Team~=PLAYER.Team then local u=t.Character:FindFirstChild(_G.AIM_AT)if u~=nil then local v=(u.Position-game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude;local w=Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p,(MOUSE.Hit.p-CC.CoordinateFrame.p).unit*v)local x,y=game.Workspace:FindPartOnRay(w,game.Workspace)local z=math.floor((y-u.Position).magnitude)r[t.Name..k]={}r[t.Name..k].dist=v;r[t.Name..k].plr=t;r[t.Name..k].diff=z;table.insert(s,z)end end end;if unpack(s)==nil then return false end;local A=math.floor(math.min(unpack(s)))if A>20 then return false end;for k,t in pairs(r)do if t.diff==A then return t.plr end end;return false end;MOUSE.KeyDown:connect(function(B)B=B:lower():byte()if B==_G.BIND then ENABLED=true end end)MOUSE.KeyUp:connect(function(B)B=B:lower():byte()if B==_G.BIND then ENABLED=false end end)game:GetService('RunService').RenderStepped:connect(function()if ENABLED then local C=GetNearestPlayerToMouse()if C~=false then local u=C.Character:FindFirstChild(_G.AIM_AT)if u then CC.CoordinateFrame=CFrame.new(CC.CoordinateFrame.p,u.CFrame.p)end end end end)end)c:Button("AimBot [Head]",function()PLAYER=game.Players.LocalPlayer;MOUSE=PLAYER:GetMouse()CC=game.Workspace.CurrentCamera;_G.AIM_AT='Head'_G.BIND=101;function GetNearestPlayerToMouse()local q={}local r={}local s={25000}for k,t in pairs(game.Players:GetPlayers())do if t~=PLAYER then table.insert(q,t)end end;for k,t in pairs(q)do if t and t.Character~=nil and t.Team~=PLAYER.Team then local u=t.Character:FindFirstChild(_G.AIM_AT)if u~=nil then local v=(u.Position-game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude;local w=Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p,(MOUSE.Hit.p-CC.CoordinateFrame.p).unit*v)local x,y=game.Workspace:FindPartOnRay(w,game.Workspace)local z=math.floor((y-u.Position).magnitude)r[t.Name..k]={}r[t.Name..k].dist=v;r[t.Name..k].plr=t;r[t.Name..k].diff=z;table.insert(s,z)end end end;if unpack(s)==nil then return false end;local A=math.floor(math.min(unpack(s)))if A>25000 then return false end;for k,t in pairs(r)do if t.diff==A then return t.plr end end;return false end;MOUSE.KeyDown:connect(function(B)B=B:lower():byte()if B==_G.BIND then ENABLED=true end end)MOUSE.KeyUp:connect(function(B)B=B:lower():byte()if B==_G.BIND then ENABLED=false end end)game:GetService('RunService').RenderStepped:connect(function()if ENABLED then local C=GetNearestPlayerToMouse()if C~=false then local u=C.Character:FindFirstChild(_G.AIM_AT)if u then CC.CoordinateFrame=CFrame.new(CC.CoordinateFrame.p,u.CFrame.p)end end end end)end)local c=b:CreateFolder("Credits")c:Label("Functions - JoshMods",{TextSize=15,TextColor=Color3.fromRGB(255,255,255),BgColor=Color3.fromRGB(69,69,69)})c:Label("AimBot - Nub Hax",{TextSize=15,TextColor=Color3.fromRGB(255,255,255),BgColor=Color3.fromRGB(69,69,69)})
