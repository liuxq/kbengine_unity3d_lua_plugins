--
-- Created by IntelliJ IDEA.
-- AUTHOR: ChenCY
-- Date: 2018/7/3 13:24
--

KBEngineLua.EntityDef = {}

KBEngineLua.datatypes = {};
KBEngineLua.datatype2id = {};

function KBEngineLua.EntityDef:New()
    local me =  {};
    setmetatable(me, self);
    self.__index = self;

    me.initDataType()
    me.bindMessageDataType()

    return me;
end

function KBEngineLua.EntityDef.clear()
    KBEngineLua.datatypes = {};
    KBEngineLua.datatype2id = {};

    KBEngineLua.EntityDef.initDataType()
    KBEngineLua.EntityDef.bindMessageDataType()
end

function KBEngineLua.EntityDef.initDataType()
    KBEngineLua.datatypes["UINT8"]		= KBEngineLua.DATATYPE_UINT8;
    KBEngineLua.datatypes["UINT16"]	= KBEngineLua.DATATYPE_UINT16;
    KBEngineLua.datatypes["UINT32"]	= KBEngineLua.DATATYPE_UINT32;
    KBEngineLua.datatypes["UINT64"]	= KBEngineLua.DATATYPE_UINT64;

    KBEngineLua.datatypes["INT8"]		= KBEngineLua.DATATYPE_INT8;
    KBEngineLua.datatypes["INT16"]		= KBEngineLua.DATATYPE_INT16;
    KBEngineLua.datatypes["INT32"]		= KBEngineLua.DATATYPE_INT32;
    KBEngineLua.datatypes["INT64"]		= KBEngineLua.DATATYPE_INT64;

    KBEngineLua.datatypes["FLOAT"]		= KBEngineLua.DATATYPE_FLOAT;
    KBEngineLua.datatypes["DOUBLE"]	= KBEngineLua.DATATYPE_DOUBLE;

    KBEngineLua.datatypes["STRING"]	= KBEngineLua.DATATYPE_STRING;
    KBEngineLua.datatypes["VECTOR2"]	= KBEngineLua.DATATYPE_VECTOR2;
    KBEngineLua.datatypes["VECTOR3"]	= KBEngineLua.DATATYPE_VECTOR3;
    KBEngineLua.datatypes["VECTOR4"]	= KBEngineLua.DATATYPE_VECTOR4;
    KBEngineLua.datatypes["PYTHON"]	= KBEngineLua.DATATYPE_PYTHON;
    KBEngineLua.datatypes["UNICODE"]	= KBEngineLua.DATATYPE_UNICODE;
    KBEngineLua.datatypes["ENTITYCALL"]	= KBEngineLua.DATATYPE_ENTITYCALL;
    KBEngineLua.datatypes["BLOB"]		= KBEngineLua.DATATYPE_BLOB;
end

function KBEngineLua.EntityDef.bindMessageDataType()
    KBEngineLua.datatypes[1] = KBEngineLua.datatypes["STRING"];
    KBEngineLua.datatypes[2] = KBEngineLua.datatypes["UINT8"];
    KBEngineLua.datatypes[3] = KBEngineLua.datatypes["UINT16"];
    KBEngineLua.datatypes[4] = KBEngineLua.datatypes["UINT32"];
    KBEngineLua.datatypes[5] = KBEngineLua.datatypes["UINT64"];
    KBEngineLua.datatypes[6] = KBEngineLua.datatypes["INT8"];
    KBEngineLua.datatypes[7] = KBEngineLua.datatypes["INT16"];
    KBEngineLua.datatypes[8] = KBEngineLua.datatypes["INT32"];
    KBEngineLua.datatypes[9] = KBEngineLua.datatypes["INT64"];
    KBEngineLua.datatypes[10] = KBEngineLua.datatypes["PYTHON"];
    KBEngineLua.datatypes[11] = KBEngineLua.datatypes["BLOB"];
    KBEngineLua.datatypes[12] = KBEngineLua.datatypes["UNICODE"];
    KBEngineLua.datatypes[13] = KBEngineLua.datatypes["FLOAT"];
    KBEngineLua.datatypes[14] = KBEngineLua.datatypes["DOUBLE"];
    KBEngineLua.datatypes[15] = KBEngineLua.datatypes["VECTOR2"];
    KBEngineLua.datatypes[16] = KBEngineLua.datatypes["VECTOR3"];
    KBEngineLua.datatypes[17] = KBEngineLua.datatypes["VECTOR4"];
end