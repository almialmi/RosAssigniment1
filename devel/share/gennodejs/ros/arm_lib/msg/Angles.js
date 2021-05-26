// Auto-generated. Do not edit!

// (in-package arm_lib.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Angles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base_arm1 = null;
      this.arm1_arm2 = null;
      this.arm2_arm3 = null;
      this.arm3_arm4 = null;
      this.p = null;
      this.i = null;
      this.d = null;
    }
    else {
      if (initObj.hasOwnProperty('base_arm1')) {
        this.base_arm1 = initObj.base_arm1
      }
      else {
        this.base_arm1 = 0.0;
      }
      if (initObj.hasOwnProperty('arm1_arm2')) {
        this.arm1_arm2 = initObj.arm1_arm2
      }
      else {
        this.arm1_arm2 = 0.0;
      }
      if (initObj.hasOwnProperty('arm2_arm3')) {
        this.arm2_arm3 = initObj.arm2_arm3
      }
      else {
        this.arm2_arm3 = 0.0;
      }
      if (initObj.hasOwnProperty('arm3_arm4')) {
        this.arm3_arm4 = initObj.arm3_arm4
      }
      else {
        this.arm3_arm4 = 0.0;
      }
      if (initObj.hasOwnProperty('p')) {
        this.p = initObj.p
      }
      else {
        this.p = 0.0;
      }
      if (initObj.hasOwnProperty('i')) {
        this.i = initObj.i
      }
      else {
        this.i = 0.0;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Angles
    // Serialize message field [base_arm1]
    bufferOffset = _serializer.float32(obj.base_arm1, buffer, bufferOffset);
    // Serialize message field [arm1_arm2]
    bufferOffset = _serializer.float32(obj.arm1_arm2, buffer, bufferOffset);
    // Serialize message field [arm2_arm3]
    bufferOffset = _serializer.float32(obj.arm2_arm3, buffer, bufferOffset);
    // Serialize message field [arm3_arm4]
    bufferOffset = _serializer.float32(obj.arm3_arm4, buffer, bufferOffset);
    // Serialize message field [p]
    bufferOffset = _serializer.float32(obj.p, buffer, bufferOffset);
    // Serialize message field [i]
    bufferOffset = _serializer.float32(obj.i, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.float32(obj.d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Angles
    let len;
    let data = new Angles(null);
    // Deserialize message field [base_arm1]
    data.base_arm1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm1_arm2]
    data.arm1_arm2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm2_arm3]
    data.arm2_arm3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm3_arm4]
    data.arm3_arm4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [p]
    data.p = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [i]
    data.i = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_lib/Angles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5c56eccbb002287c9ebfe2ecc181f37';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 base_arm1
    float32 arm1_arm2
    float32 arm2_arm3
    float32 arm3_arm4
    float32 p
    float32 i 
    float32 d
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Angles(null);
    if (msg.base_arm1 !== undefined) {
      resolved.base_arm1 = msg.base_arm1;
    }
    else {
      resolved.base_arm1 = 0.0
    }

    if (msg.arm1_arm2 !== undefined) {
      resolved.arm1_arm2 = msg.arm1_arm2;
    }
    else {
      resolved.arm1_arm2 = 0.0
    }

    if (msg.arm2_arm3 !== undefined) {
      resolved.arm2_arm3 = msg.arm2_arm3;
    }
    else {
      resolved.arm2_arm3 = 0.0
    }

    if (msg.arm3_arm4 !== undefined) {
      resolved.arm3_arm4 = msg.arm3_arm4;
    }
    else {
      resolved.arm3_arm4 = 0.0
    }

    if (msg.p !== undefined) {
      resolved.p = msg.p;
    }
    else {
      resolved.p = 0.0
    }

    if (msg.i !== undefined) {
      resolved.i = msg.i;
    }
    else {
      resolved.i = 0.0
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0.0
    }

    return resolved;
    }
};

module.exports = Angles;
