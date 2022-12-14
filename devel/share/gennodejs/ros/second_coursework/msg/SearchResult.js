// Auto-generated. Do not edit!

// (in-package second_coursework.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SearchResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roomNames = null;
      this.roomIds = null;
      this.roomTimes = null;
    }
    else {
      if (initObj.hasOwnProperty('roomNames')) {
        this.roomNames = initObj.roomNames
      }
      else {
        this.roomNames = [];
      }
      if (initObj.hasOwnProperty('roomIds')) {
        this.roomIds = initObj.roomIds
      }
      else {
        this.roomIds = [];
      }
      if (initObj.hasOwnProperty('roomTimes')) {
        this.roomTimes = initObj.roomTimes
      }
      else {
        this.roomTimes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SearchResult
    // Serialize message field [roomNames]
    bufferOffset = _arraySerializer.string(obj.roomNames, buffer, bufferOffset, null);
    // Serialize message field [roomIds]
    bufferOffset = _arraySerializer.uint32(obj.roomIds, buffer, bufferOffset, null);
    // Serialize message field [roomTimes]
    bufferOffset = _arraySerializer.time(obj.roomTimes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SearchResult
    let len;
    let data = new SearchResult(null);
    // Deserialize message field [roomNames]
    data.roomNames = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [roomIds]
    data.roomIds = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [roomTimes]
    data.roomTimes = _arrayDeserializer.time(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.roomNames.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.roomIds.length;
    length += 8 * object.roomTimes.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'second_coursework/SearchResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b9694de92de2396031c990177eb077c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    string[] roomNames
    uint32[] roomIds
    time[] roomTimes
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SearchResult(null);
    if (msg.roomNames !== undefined) {
      resolved.roomNames = msg.roomNames;
    }
    else {
      resolved.roomNames = []
    }

    if (msg.roomIds !== undefined) {
      resolved.roomIds = msg.roomIds;
    }
    else {
      resolved.roomIds = []
    }

    if (msg.roomTimes !== undefined) {
      resolved.roomTimes = msg.roomTimes;
    }
    else {
      resolved.roomTimes = []
    }

    return resolved;
    }
};

module.exports = SearchResult;
