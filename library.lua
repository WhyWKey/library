local a={}local b,c,d,e,f,g,h,i,j,k,l=game:GetService("UserInputService"),game:GetService("TeleportService"),game:GetService("RunService"),game:GetService("Workspace"),game:GetService("Lighting"),game:GetService("Players"),game:GetService("HttpService"),game:GetService("StarterGui"),game:GetService("ReplicatedStorage"),game:GetService("TweenService"),game:GetService("Stats")local m=g.LocalPlayer;local n,o=m:GetMouse(),e.Camera;local p,q,r,s,t,u=table.find,table.clear,string.sub,string.upper,string.lower,table.insert;local v,w,x,y,z,A,B,C,D,E,F=math.huge,math.pi,math.clamp,math.round,math.abs,math.floor,math.random,math.sin,math.cos,math.rad,math.pi/2;local G,H,I=0,25,0;local J,K=coroutine.create,coroutine.resume;local L,M=task.spawn,task.wait;local N,O,P=Vector2.new,Vector3.new,CFrame.new;local Q,R=Color3.fromRGB,Color3.fromHex;local S=Instance.new;do function a:newDrawing(T,U)local V=Drawing.new(T)if U then for W,X in next,U do V[W]=X end end;return V end end;local Y={["Position"]={100,100},["Drawings"]={Outline=a:newDrawing("Square",{Size=N(300,20),Position=N(1496,100),Color=Color3.fromRGB(0,0,0),Filled=true,Visible=false}),Inline=a:newDrawing("Square",{Size=N(1,1),Position=N(1,1),Color=Color3.fromRGB(50,50,50),Filled=true,Visible=false}),Frame=a:newDrawing("Image",{Size=N(1,1),Position=N(1,1),Visible=false,Data=game:HttpGet("https://raw.githubusercontent.com/portallol/luna/main/Gradient.png")}),Accent=a:newDrawing("Square",{Size=N(2,2),Position=N(1,1),Color=Color3.fromRGB(0,111,255),Filled=true,Visible=false})},["Letters"]={},["Cheat Name"]="[osiris.cool]",Index=0,tick=tick()}function Y:SetVisible(Z)for W,X in next,Y["Drawings"]do X.Visible=Z end;for W,X in next,Y["Letters"]do X.Visible=Z end end;Y["Text"]=""..Y["Cheat Name"].." | FPS: {fps} | Ping: {ping}"for W=1,#Y["Text"]+30 do local Text=a:newDrawing("Text",{Text="a",Size=13,Font=2,Visible=true,Color=Q(255,255,255)})table.insert(Y["Letters"],Text)end;d.RenderStepped:Connect(function(_)if Y["Drawings"]["Outline"].Visible==true then Y.Sizing={}if tick()-Y.tick>0.3 then Text=Y["Text"]:gsub("{fps}",A(1/_)):gsub("{ping}",A(l.Network.ServerStatsItem["Data Ping"]:GetValue())):gsub("{date}",os.date("%b. %d, %Y"))Y.tick=tick()end;Y.Index=0;if Text then for a0,Text in Y["Letters"]do Text.Transparency=0;Text.Position=N(Y["Position"][1]+Y.Index+4,Y["Position"][2]+Text.TextBounds.Y/2)Y.Index=Y.Index+Text.TextBounds.X end;for W=1,#Text do local string=Text:sub(W,W)Y["Letters"][W].Text=string;Y["Letters"][W].Transparency=1;Y["Drawings"]["Outline"].Size=N(215+W,26)end end;Y["Drawings"]["Inline"].Size=N(Y["Drawings"]["Outline"].Size.X-2,Y["Drawings"]["Outline"].Size.Y-1)Y["Drawings"]["Frame"].Size=N(Y["Drawings"]["Inline"].Size.X-2,Y["Drawings"]["Inline"].Size.Y-2)Y["Drawings"]["Accent"].Size=N(Y["Drawings"]["Frame"].Size.X,1.5)Y["Drawings"]["Outline"].Position=N(Y["Position"][1],Y["Position"][2])Y["Drawings"]["Inline"].Position=N(Y["Drawings"]["Outline"].Position.X+1,Y["Drawings"]["Outline"].Position.Y+1)Y["Drawings"]["Frame"].Position=N(Y["Drawings"]["Inline"].Position.X+1,Y["Drawings"]["Inline"].Position.Y+1)Y["Drawings"]["Accent"].Position=N(Y["Drawings"]["Frame"].Position.X,Y["Drawings"]["Frame"].Position.Y)end end)task.spawn(function()local a1=0;while true do if Y["Drawings"]["Outline"].Visible==true then a1=a1+1;for W,X in pairs(Y["Letters"])do if W~=1 and W<13 then X.Color=Color3.fromHSV((a1/59+W/59)%1,1,1)end end end;wait()end end)
return Y
