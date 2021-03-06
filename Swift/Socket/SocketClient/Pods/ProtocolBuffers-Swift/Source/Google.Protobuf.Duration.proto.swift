/// Generated by the Protocol Buffers 3.3.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.21
/// Source file "duration.proto"
/// Syntax "Proto3"

import Foundation

public extension Google.Protobuf{}

public extension Google.Protobuf {
    public struct DurationRoot {
        public static let `default` = DurationRoot()
        public var extensionRegistry:ExtensionRegistry

        init() {
            extensionRegistry = ExtensionRegistry()
            registerAllExtensions(registry: extensionRegistry)
            Google.Protobuf.SwiftDescriptorRoot.default.registerAllExtensions(registry: extensionRegistry)
        }
        public func registerAllExtensions(registry: ExtensionRegistry) {
        }
    }

    /// A Duration represents a signed, fixed-length span of time represented
    /// as a count of seconds and fractions of seconds at nanosecond
    /// resolution. It is independent of any calendar and concepts like "day"
    /// or "month". It is related to Timestamp in that the difference between
    /// two Timestamp values is a Duration and it can be added or subtracted
    /// from a Timestamp. Range is approximately +-10,000 years.
    /// Example 1: Compute Duration from two Timestamps in pseudo code.
    ///     Timestamp start = ...;
    ///     Timestamp end = ...;
    ///     Duration duration = ...;
    ///     duration.seconds = end.seconds - start.seconds;
    ///     duration.nanos = end.nanos - start.nanos;
    ///     if (duration.seconds < 0 && duration.nanos > 0) {
    ///       duration.seconds += 1;
    ///       duration.nanos -= 1000000000;
    ///     } else if (durations.seconds > 0 && duration.nanos < 0) {
    ///       duration.seconds -= 1;
    ///       duration.nanos += 1000000000;
    ///     }
    /// Example 2: Compute Timestamp from Timestamp + Duration in pseudo code.
    ///     Timestamp start = ...;
    ///     Duration duration = ...;
    ///     Timestamp end = ...;
    ///     end.seconds = start.seconds + duration.seconds;
    ///     end.nanos = start.nanos + duration.nanos;
    ///     if (end.nanos < 0) {
    ///       end.seconds -= 1;
    ///       end.nanos += 1000000000;
    ///     } else if (end.nanos >= 1000000000) {
    ///       end.seconds += 1;
    ///       end.nanos -= 1000000000;
    ///     }
    final public class Duration : GeneratedMessage {
        public typealias BuilderType = Google.Protobuf.Duration.Builder

        public static func == (lhs: Google.Protobuf.Duration, rhs: Google.Protobuf.Duration) -> Bool {
            if lhs === rhs {
                return true
            }
            var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
            fieldCheck = fieldCheck && (lhs.hasSeconds == rhs.hasSeconds) && (!lhs.hasSeconds || lhs.seconds == rhs.seconds)
            fieldCheck = fieldCheck && (lhs.hasNanos == rhs.hasNanos) && (!lhs.hasNanos || lhs.nanos == rhs.nanos)
            fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
            return fieldCheck
        }

        /// Signed seconds of the span of time. Must be from -315,576,000,000
        /// to +315,576,000,000 inclusive.
        public fileprivate(set) var seconds:Int64! = nil
        public fileprivate(set) var hasSeconds:Bool = false

        /// Signed fractions of a second at nanosecond resolution of the span
        /// of time. Durations less than one second are represented with a 0
        /// `seconds` field and a positive or negative `nanos` field. For durations
        /// of one second or more, a non-zero value for the `nanos` field must be
        /// of the same sign as the `seconds` field. Must be from -999,999,999
        /// to +999,999,999 inclusive.
        public fileprivate(set) var nanos:Int32! = nil
        public fileprivate(set) var hasNanos:Bool = false

        required public init() {
            super.init()
        }
        override public func isInitialized() -> Bool {
            return true
        }
        override public func writeTo(codedOutputStream: CodedOutputStream) throws {
            if hasSeconds {
                try codedOutputStream.writeInt64(fieldNumber: 1, value:seconds)
            }
            if hasNanos {
                try codedOutputStream.writeInt32(fieldNumber: 2, value:nanos)
            }
            try unknownFields.writeTo(codedOutputStream: codedOutputStream)
        }
        override public func serializedSize() -> Int32 {
            var serialize_size:Int32 = memoizedSerializedSize
            if serialize_size != -1 {
             return serialize_size
            }

            serialize_size = 0
            if hasSeconds {
                serialize_size += seconds.computeInt64Size(fieldNumber: 1)
            }
            if hasNanos {
                serialize_size += nanos.computeInt32Size(fieldNumber: 2)
            }
            serialize_size += unknownFields.serializedSize()
            memoizedSerializedSize = serialize_size
            return serialize_size
        }
        public class func getBuilder() -> Google.Protobuf.Duration.Builder {
            return Google.Protobuf.Duration.classBuilder() as! Google.Protobuf.Duration.Builder
        }
        public func getBuilder() -> Google.Protobuf.Duration.Builder {
            return classBuilder() as! Google.Protobuf.Duration.Builder
        }
        override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Google.Protobuf.Duration.Builder()
        }
        override public func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Google.Protobuf.Duration.Builder()
        }
        public func toBuilder() throws -> Google.Protobuf.Duration.Builder {
            return try Google.Protobuf.Duration.builderWithPrototype(prototype:self)
        }
        public class func builderWithPrototype(prototype:Google.Protobuf.Duration) throws -> Google.Protobuf.Duration.Builder {
            return try Google.Protobuf.Duration.Builder().mergeFrom(other:prototype)
        }
        override public func encode() throws -> Dictionary<String,Any> {
            guard isInitialized() else {
                throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
            }

            var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
            if hasSeconds {
                jsonMap["seconds"] = "\(seconds)"
            }
            if hasNanos {
                jsonMap["nanos"] = Int(nanos)
            }
            return jsonMap
        }
        override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Google.Protobuf.Duration {
            return try Google.Protobuf.Duration.Builder.decodeToBuilder(jsonMap:jsonMap).build()
        }
        override class public func fromJSON(data:Data) throws -> Google.Protobuf.Duration {
            return try Google.Protobuf.Duration.Builder.fromJSONToBuilder(data:data).build()
        }
        override public func getDescription(indent:String) throws -> String {
            var output = ""
            if hasSeconds {
                output += "\(indent) seconds: \(seconds) \n"
            }
            if hasNanos {
                output += "\(indent) nanos: \(nanos) \n"
            }
            output += unknownFields.getDescription(indent: indent)
            return output
        }
        override public var hashValue:Int {
            get {
                var hashCode:Int = 7
                if hasSeconds {
                    hashCode = (hashCode &* 31) &+ seconds.hashValue
                }
                if hasNanos {
                    hashCode = (hashCode &* 31) &+ nanos.hashValue
                }
                hashCode = (hashCode &* 31) &+  unknownFields.hashValue
                return hashCode
            }
        }


        //Meta information declaration start

        override public class func className() -> String {
            return "Google.Protobuf.Duration"
        }
        override public func className() -> String {
            return "Google.Protobuf.Duration"
        }
        //Meta information declaration end

        final public class Builder : GeneratedMessageBuilder {
            fileprivate var builderResult:Google.Protobuf.Duration = Google.Protobuf.Duration()
            public func getMessage() -> Google.Protobuf.Duration {
                return builderResult
            }

            required override public init () {
                super.init()
            }
            /// Signed seconds of the span of time. Must be from -315,576,000,000
            /// to +315,576,000,000 inclusive.
            public var seconds:Int64 {
                get {
                    return builderResult.seconds
                }
                set (value) {
                    builderResult.hasSeconds = true
                    builderResult.seconds = value
                }
            }
            public var hasSeconds:Bool {
                get {
                    return builderResult.hasSeconds
                }
            }
            @discardableResult
            public func setSeconds(_ value:Int64) -> Google.Protobuf.Duration.Builder {
                self.seconds = value
                return self
            }
            @discardableResult
            public func clearSeconds() -> Google.Protobuf.Duration.Builder{
                builderResult.hasSeconds = false
                builderResult.seconds = nil
                return self
            }
            /// Signed fractions of a second at nanosecond resolution of the span
            /// of time. Durations less than one second are represented with a 0
            /// `seconds` field and a positive or negative `nanos` field. For durations
            /// of one second or more, a non-zero value for the `nanos` field must be
            /// of the same sign as the `seconds` field. Must be from -999,999,999
            /// to +999,999,999 inclusive.
            public var nanos:Int32 {
                get {
                    return builderResult.nanos
                }
                set (value) {
                    builderResult.hasNanos = true
                    builderResult.nanos = value
                }
            }
            public var hasNanos:Bool {
                get {
                    return builderResult.hasNanos
                }
            }
            @discardableResult
            public func setNanos(_ value:Int32) -> Google.Protobuf.Duration.Builder {
                self.nanos = value
                return self
            }
            @discardableResult
            public func clearNanos() -> Google.Protobuf.Duration.Builder{
                builderResult.hasNanos = false
                builderResult.nanos = nil
                return self
            }
            override public var internalGetResult:GeneratedMessage {
                get {
                    return builderResult
                }
            }
            @discardableResult
            override public func clear() -> Google.Protobuf.Duration.Builder {
                builderResult = Google.Protobuf.Duration()
                return self
            }
            override public func clone() throws -> Google.Protobuf.Duration.Builder {
                return try Google.Protobuf.Duration.builderWithPrototype(prototype:builderResult)
            }
            override public func build() throws -> Google.Protobuf.Duration {
                try checkInitialized()
                return buildPartial()
            }
            public func buildPartial() -> Google.Protobuf.Duration {
                let returnMe:Google.Protobuf.Duration = builderResult
                return returnMe
            }
            @discardableResult
            public func mergeFrom(other:Google.Protobuf.Duration) throws -> Google.Protobuf.Duration.Builder {
                if other == Google.Protobuf.Duration() {
                    return self
                }
                if other.hasSeconds {
                    seconds = other.seconds
                }
                if other.hasNanos {
                    nanos = other.nanos
                }
                try merge(unknownField: other.unknownFields)
                return self
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Google.Protobuf.Duration.Builder {
                return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Duration.Builder {
                let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
                while (true) {
                    let protobufTag = try codedInputStream.readTag()
                    switch protobufTag {
                    case 0: 
                        self.unknownFields = try unknownFieldsBuilder.build()
                        return self

                    case 8:
                        seconds = try codedInputStream.readInt64()

                    case 16:
                        nanos = try codedInputStream.readInt32()

                    default:
                        if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                            unknownFields = try unknownFieldsBuilder.build()
                            return self
                        }
                    }
                }
            }
            class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Google.Protobuf.Duration.Builder {
                let resultDecodedBuilder = Google.Protobuf.Duration.Builder()
                if let jsonValueSeconds = jsonMap["seconds"] as? String {
                    resultDecodedBuilder.seconds = Int64(jsonValueSeconds)!
                } else if let jsonValueSeconds = jsonMap["seconds"] as? Int {
                    resultDecodedBuilder.seconds = Int64(jsonValueSeconds)
                }
                if let jsonValueNanos = jsonMap["nanos"] as? Int {
                    resultDecodedBuilder.nanos = Int32(jsonValueNanos)
                } else if let jsonValueNanos = jsonMap["nanos"] as? String {
                    resultDecodedBuilder.nanos = Int32(jsonValueNanos)!
                }
                return resultDecodedBuilder
            }
            override class public func fromJSONToBuilder(data:Data) throws -> Google.Protobuf.Duration.Builder {
                let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
                guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
                  throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
                }
                return try Google.Protobuf.Duration.Builder.decodeToBuilder(jsonMap:jsDataCast)
            }
        }

    }

}
extension Google.Protobuf.Duration: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Google.Protobuf.Duration> {
        var mergedArray = Array<Google.Protobuf.Duration>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Google.Protobuf.Duration? {
        return try Google.Protobuf.Duration.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Google.Protobuf.Duration {
        return try Google.Protobuf.Duration.Builder().mergeFrom(data: data, extensionRegistry:Google.Protobuf.DurationRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Duration {
        return try Google.Protobuf.Duration.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Google.Protobuf.Duration {
        return try Google.Protobuf.Duration.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Duration {
        return try Google.Protobuf.Duration.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Google.Protobuf.Duration {
        return try Google.Protobuf.Duration.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Duration {
        return try Google.Protobuf.Duration.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "seconds": return self.seconds
        case "nanos": return self.nanos
        default: return nil
        }
    }
}
extension Google.Protobuf.Duration.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = Google.Protobuf.Duration
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "seconds": return self.seconds
            case "nanos": return self.nanos
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "seconds":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.seconds = newSubscriptValue
            case "nanos":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.nanos = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
