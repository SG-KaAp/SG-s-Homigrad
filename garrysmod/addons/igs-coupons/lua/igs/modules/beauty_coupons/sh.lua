function IGS.COUP.WriteAlias(a)
	net.WriteUInt(a.id,16)
	net.WriteString(a.alias)
	net.WriteString(a.code)
	net.WriteBool(a.activator)
	if a.activator then
		net.WriteString(util.SteamIDFrom64(a.activator))
	end
	net.WriteInt(a.date, 32)
end

function IGS.COUP.ReadAlias()
	return {
		id        = net.ReadUInt(16),
		alias     = net.ReadString(),
		code      = net.ReadString(),
		activator = net.ReadBool() and net.ReadString(),
		date      = net.ReadUInt(32),
	}
end
