// Auto-generated. Do not edit!

// (in-package arm_lib.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class fkRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_angles = null;
      this.link_length = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_angles')) {
        this.joint_angles = initObj.joint_angles
      }
      else {
        this.joint_angles = [];
      }
      if (initObj.hasOwnProperty('link_length')) {
        this.link_length = initObj.link_length
      }
      else {
        this.link_length = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fkRequest
    // Serialize message field [joint_angles]
    bufferOffset = _arraySerializer.float32(obj.joint_angles, buffer, bufferOffset, null);
    // Serialize message field [link_length]
    bufferOffset = _arraySerializer.float32(obj.link_length, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fkRequest
    let len;
    let data = new fkRequest(null);
    // Deserialize message field [joint_angles]
    data.joint_angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [link_length]
    data.link_length = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint_angles.length;
    length += 4 * object.link_length.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_lib/fkRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9df861c61f6560d6be96e6dfae2e9d3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joint_angles
    float32[] link_length
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fkRequest(null);
    if (msg.joint_angles !== undefined) {
      resolved.joint_angles = msg.joint_angles;
    }
    else {
      resolved.joint_angles = []
    }

    if (msg.link_length !== undefined) {
      resolved.link_length = msg.link_length;
    }
    else {
      resolved.link_length = []
    }

    return resolved;
    }
};

class fkResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.endpos = null;
    }
    else {
      if (initObj.hasOwnProperty('endpos')) {
        this.endpos = initObj.endpos
      }
      else {
        this.endpos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fkResponse
    // Serialize message field [endpos]
    bufferOffset = _arraySerializer.float32(obj.endpos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fkResponse
    let len;
    let data = new fkResponse(null);
    // Deserialize message field [endpos]
    data.endpos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.endpos.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_lib/fkResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7be4b909778b4b252c70f3ce3b52ba00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] endpos
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fkResponse(null);
    if (msg.endpos !== undefined) {
      resolved.endpos = msg.endpos;
    }
    else {
      resolved.endpos = []
    }

    return resolved;
    }
};

module.exports = {
  Request: fkRequest,
  Response: fkResponse,
  md5sum() { return '92fe4648bf1f304549e33eb855c12723'; },
  datatype() { return 'arm_lib/fk'; }
};
