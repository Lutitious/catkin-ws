// Auto-generated. Do not edit!

// (in-package second_coursework.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetRoomCoordRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roomName = null;
    }
    else {
      if (initObj.hasOwnProperty('roomName')) {
        this.roomName = initObj.roomName
      }
      else {
        this.roomName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRoomCoordRequest
    // Serialize message field [roomName]
    bufferOffset = _serializer.string(obj.roomName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRoomCoordRequest
    let len;
    let data = new GetRoomCoordRequest(null);
    // Deserialize message field [roomName]
    data.roomName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.roomName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'second_coursework/GetRoomCoordRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92fd3f5b5bb98ae4c37a9c24309a0a61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string roomName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRoomCoordRequest(null);
    if (msg.roomName !== undefined) {
      resolved.roomName = msg.roomName;
    }
    else {
      resolved.roomName = ''
    }

    return resolved;
    }
};

class GetRoomCoordResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRoomCoordResponse
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRoomCoordResponse
    let len;
    let data = new GetRoomCoordResponse(null);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'second_coursework/GetRoomCoordResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7c84ff13976aa04656e56e300124444';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point point
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRoomCoordResponse(null);
    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Point.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetRoomCoordRequest,
  Response: GetRoomCoordResponse,
  md5sum() { return 'd324a5cca6f56c33636632bf1cd930fc'; },
  datatype() { return 'second_coursework/GetRoomCoord'; }
};
