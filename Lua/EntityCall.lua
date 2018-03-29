
KBEngineLua.EntityCall = {}


KBEngineLua.ENTITYCALL_TYPE_CELL = 0;-- CELL_ENTITYCALL
KBEngineLua.ENTITYCALL_TYPE_BASE = 1;-- BASE_ENTITYCALL	



function KBEngineLua.EntityCall:New()
	local me =  {};
	setmetatable(me, self);
	self.__index = self;

	me.id = 0;
	me.className = "";
	me.type = KBEngineLua.ENTITYCALL_TYPE_CELL;
	me.networkInterface_ = KBEngineLua._networkInterface;
	me.bundle = nil;

    return me;
end

function KBEngineLua.EntityCall:isBase( )
	return self.type == KBEngineLua.ENTITYCALL_TYPE_BASE;
end

function KBEngineLua.EntityCall:isCell( )
	return self.type == KBEngineLua.ENTITYCALL_TYPE_CELL;
end


	----创建新的EntityCall

function KBEngineLua.EntityCall:newCall()

	if(self.bundle == nil) then
		self.bundle = KBEngineLua.Bundle:New();
	end
	
	if(self.type == KBEngineLua.ENTITYCALL_TYPE_CELL) then
		self.bundle:newMessage(KBEngineLua.messages["Baseapp_onRemoteCallCellMethodFromClient"]);
	else
		self.bundle:newMessage(KBEngineLua.messages["Entity_onRemoteMethodCall"]);
	end

	self.bundle:writeInt32(self.id);
	
	return self.bundle;
end


	---向服务端发送这个EntityCall

function KBEngineLua.EntityCall:sendCall(inbundle)

	if(inbundle == nil) then
		inbundle = self.bundle;
	end
	
	inbundle:send();
	
	if(inbundle == self.bundle) then
		self.bundle = nil;
	end
end