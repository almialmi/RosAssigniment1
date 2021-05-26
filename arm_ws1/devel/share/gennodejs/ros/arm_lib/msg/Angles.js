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
      this.base_arm1_joint = null;
      this.arm1_arm2_joint = null;
      this.arm2_arm3_joint = null;
      this.arm3_arm4_joint = null;
      this.p = null;
      this.i = null;
      this.d = null;
    }
    else {
      if (initObj.hasOwnProperty('base_arm1_joint')) {
        this.base_arm1_joint = initObj.base_arm1_joint
      }
      else {
        this.base_arm1_joint = 0.0;
      }
      if (initObj.hasOwnProperty('arm1_arm2_joint')) {
        this.arm1_arm2_joint = initObj.arm1_arm2_joint
      }
      else {
        this.arm1_arm2_joint = 0.0;
      }
      if (initObj.hasOwnProperty('arm2_arm3_joint')) {
        this.arm2_arm3_joint = initObj.arm2_arm3_joint
      }
      else {
        this.arm2_arm3_joint = 0.0;
      }
      if (initObj.hasOwnProperty('arm3_arm4_joint')) {
        this.arm3_arm4_joint = initObj.arm3_arm4_joint
      }
      else {
        this.arm3_arm4_joint = 0.0;
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
    // Serialize message field [base_arm1_joint]
    bufferOffset = _serializer.float32(obj.base_arm1_joint, buffer, bufferOffset);
    // Serialize message field [arm1_arm2_joint]
    bufferOffset = _serializer.float32(obj.arm1_arm2_joint, buffer, bufferOffset);
    // Serialize message field [arm2_arm3_joint]
    bufferOffset = _serializer.float32(obj.arm2_arm3_joint, buffer, bufferOffset);
    // Serialize message field [arm3_arm4_joint]
    bufferOffset = _serializer.float32(obj.arm3_arm4_joint, buffer, bufferOffset);
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
    // Deserialize message field [base_arm1_joint]
    data.base_arm1_joint = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm1_arm2_joint]
    data.arm1_arm2_joint = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm2_arm3_joint]
    data.arm2_arm3_joint = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm3_arm4_joint]
    data.arm3_arm4_joint = _deserializer.float32(buffer, bufferOffset);
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
    return '4d2e54150893e213291861331cdf2b18';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 base_arm1_joint
    float32 arm1_arm2_joint
    float32 arm2_arm3_joint
    float32 arm3_arm4_joint
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
    if (msg.base_arm1_joint !== undefined) {
      resolved.base_arm1_joint = msg.base_arm1_joint;
    }
    else {
      resolved.base_arm1_joint = 0.0
    }

    if (msg.arm1_arm2_joint !== undefined) {
      resolved.arm1_arm2_joint = msg.arm1_arm2_joint;
    }
    else {
      resolved.arm1_arm2_joint = 0.0
    }

    if (msg.arm2_arm3_joint !== undefined) {
      resolved.arm2_arm3_joint = msg.arm2_arm3_joint;
    }
    else {
      resolved.arm2_arm3_joint = 0.0
    }

    if (msg.arm3_arm4_joint !== undefined) {
      resolved.arm3_arm4_joint = msg.arm3_arm4_joint;
    }
    else {
      resolved.arm3_arm4_joint = 0.0
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
