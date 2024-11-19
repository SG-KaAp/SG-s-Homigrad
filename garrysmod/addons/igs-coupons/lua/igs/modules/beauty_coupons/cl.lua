function IGS.COUP.Request(cb)
	net.Ping("IGS.GetCouponsAliases")

	net.Receive("IGS.GetCouponsAliases",function()
		local d = {}
		for i = 1,net.ReadUInt(8) do
			d[i] = IGS.COUP.ReadAlias()
		end
		cb(d)
	end)
end

function IGS.COUP.Create(cb, alias, igs)
	net.Start("IGS.CreateCouponAlias")
		net.WriteString(alias)
		net.WriteDouble(igs)
	net.SendToServer()

	net.Receive("IGS.CreateCouponAlias",function()
		local ok = net.ReadBool()
		cb(ok,ok and IGS.COUP.ReadAlias())
	end)
end

function IGS.COUP.Delete(cb, id)
	net.Start("IGS.DelCouponAlias")
		net.WriteUInt(id,16)
	net.SendToServer()

	net.Receive("IGS.DelCouponAlias",function()
		local ok = net.ReadBool()
		cb(ok,ok and IGS.COUP.ReadAlias())
	end)
end
