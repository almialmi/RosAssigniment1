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

class ikRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuator_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('actuator_pose')) {
        this.actuator_pose = initObj.actuator_pose
      }
      else {
        this.actuator_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ikRequest
    // Serialize message field [actuator_pose]
    bufferOffset = _arraySerializer.float32(obj.actuator_pose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ikRequest
    let len;
    let data = new ikRequest(null);
    // Deserialize message field [actuator_pose]
    data.actuator_pose = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.actuator_pose.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_lib/ikRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '731bfe7d32e7b21fcd58c1fb43ca65e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] actuator_pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ikRequest(null);
    if (msg.actuator_pose !== undefined) {
      resolved.actuator_pose = msg.actuator_pose;
    }
    else {
      resolved.actuator_pose = []
    }

    return resolved;
    }
};

class ikResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_angles = null;
    }
    else {
      if (initObj.hasOwnProperty('new_angles')) {
        this.new_angles = initObj.new_angles
      }
      else {
        this.new_angles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ikResponse
    // Serialize message field [new_angles]
    bufferOffset = _arraySerializer.float32(obj.new_angles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ikResponse
    let len;
    let data = new ikResponse(null);
    // Deserialize message field [new_angles]
    data.new_angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.new_angles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_lib/ikResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82fa74b77992c44ec360ba16be08cdcb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] new_angles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ikResponse(null);
    if (msg.new_angles !== undefined) {
      resolved.new_angles = msg.new_angles;
    }
    else {
      resolved.new_angles = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ikRequest,
  Response: ikResponse,
  md5sum() { return '2c802ecf38b17c9f65562f8dd1868972'; },
  datatype() { return 'arm_lib/ik'; }
};
