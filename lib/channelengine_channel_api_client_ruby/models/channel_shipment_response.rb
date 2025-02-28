=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

The version of the OpenAPI document: 2.9.10

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module ChannelEngineChannelApiClient
  class ChannelShipmentResponse
    # The unique order reference used by the Channel.
    attr_accessor :channel_order_no

    attr_accessor :lines

    # The date at which the shipment was created in ChannelEngine.
    attr_accessor :created_at

    # The date at which the shipment was last modified in ChannelEngine.
    attr_accessor :updated_at

    # The unique shipping reference used by the Shipping carrier (track&trace number).
    attr_accessor :track_trace_no

    # A link to a page of the carrier where the customer can track the shipping of her package.
    attr_accessor :track_trace_url

    # The unique return shipping reference that may be used by the Shipping carrier (track & trace number) if the shipment is returned.
    attr_accessor :return_track_trace_no

    # Shipment method: the carrier used for shipping the package. E.g. DHL, postNL.
    attr_accessor :method

    # The code of the country from where the package is being shipped.
    attr_accessor :shipped_from_country_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'channel_order_no' => :'ChannelOrderNo',
        :'lines' => :'Lines',
        :'created_at' => :'CreatedAt',
        :'updated_at' => :'UpdatedAt',
        :'track_trace_no' => :'TrackTraceNo',
        :'track_trace_url' => :'TrackTraceUrl',
        :'return_track_trace_no' => :'ReturnTrackTraceNo',
        :'method' => :'Method',
        :'shipped_from_country_code' => :'ShippedFromCountryCode'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'channel_order_no' => :'String',
        :'lines' => :'Array<ChannelShipmentLineResponse>',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'track_trace_no' => :'String',
        :'track_trace_url' => :'String',
        :'return_track_trace_no' => :'String',
        :'method' => :'String',
        :'shipped_from_country_code' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'track_trace_no',
        :'track_trace_url',
        :'return_track_trace_no',
        :'method',
        :'shipped_from_country_code'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChannelEngineChannelApiClient::ChannelShipmentResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChannelEngineChannelApiClient::ChannelShipmentResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'channel_order_no')
        self.channel_order_no = attributes[:'channel_order_no']
      end

      if attributes.key?(:'lines')
        if (value = attributes[:'lines']).is_a?(Array)
          self.lines = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'track_trace_no')
        self.track_trace_no = attributes[:'track_trace_no']
      end

      if attributes.key?(:'track_trace_url')
        self.track_trace_url = attributes[:'track_trace_url']
      end

      if attributes.key?(:'return_track_trace_no')
        self.return_track_trace_no = attributes[:'return_track_trace_no']
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'shipped_from_country_code')
        self.shipped_from_country_code = attributes[:'shipped_from_country_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @channel_order_no.nil?
        invalid_properties.push('invalid value for "channel_order_no", channel_order_no cannot be nil.')
      end

      if @lines.nil?
        invalid_properties.push('invalid value for "lines", lines cannot be nil.')
      end

      if !@track_trace_no.nil? && @track_trace_no.to_s.length > 50
        invalid_properties.push('invalid value for "track_trace_no", the character length must be smaller than or equal to 50.')
      end

      if !@track_trace_no.nil? && @track_trace_no.to_s.length < 0
        invalid_properties.push('invalid value for "track_trace_no", the character length must be great than or equal to 0.')
      end

      if !@track_trace_url.nil? && @track_trace_url.to_s.length > 250
        invalid_properties.push('invalid value for "track_trace_url", the character length must be smaller than or equal to 250.')
      end

      if !@track_trace_url.nil? && @track_trace_url.to_s.length < 0
        invalid_properties.push('invalid value for "track_trace_url", the character length must be great than or equal to 0.')
      end

      if !@return_track_trace_no.nil? && @return_track_trace_no.to_s.length > 50
        invalid_properties.push('invalid value for "return_track_trace_no", the character length must be smaller than or equal to 50.')
      end

      if !@return_track_trace_no.nil? && @return_track_trace_no.to_s.length < 0
        invalid_properties.push('invalid value for "return_track_trace_no", the character length must be great than or equal to 0.')
      end

      if !@method.nil? && @method.to_s.length > 50
        invalid_properties.push('invalid value for "method", the character length must be smaller than or equal to 50.')
      end

      if !@method.nil? && @method.to_s.length < 0
        invalid_properties.push('invalid value for "method", the character length must be great than or equal to 0.')
      end

      if !@shipped_from_country_code.nil? && @shipped_from_country_code.to_s.length > 3
        invalid_properties.push('invalid value for "shipped_from_country_code", the character length must be smaller than or equal to 3.')
      end

      if !@shipped_from_country_code.nil? && @shipped_from_country_code.to_s.length < 0
        invalid_properties.push('invalid value for "shipped_from_country_code", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @channel_order_no.nil?
      return false if @lines.nil?
      return false if !@track_trace_no.nil? && @track_trace_no.to_s.length > 50
      return false if !@track_trace_no.nil? && @track_trace_no.to_s.length < 0
      return false if !@track_trace_url.nil? && @track_trace_url.to_s.length > 250
      return false if !@track_trace_url.nil? && @track_trace_url.to_s.length < 0
      return false if !@return_track_trace_no.nil? && @return_track_trace_no.to_s.length > 50
      return false if !@return_track_trace_no.nil? && @return_track_trace_no.to_s.length < 0
      return false if !@method.nil? && @method.to_s.length > 50
      return false if !@method.nil? && @method.to_s.length < 0
      return false if !@shipped_from_country_code.nil? && @shipped_from_country_code.to_s.length > 3
      return false if !@shipped_from_country_code.nil? && @shipped_from_country_code.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] track_trace_no Value to be assigned
    def track_trace_no=(track_trace_no)
      if !track_trace_no.nil? && track_trace_no.to_s.length > 50
        fail ArgumentError, 'invalid value for "track_trace_no", the character length must be smaller than or equal to 50.'
      end

      if !track_trace_no.nil? && track_trace_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "track_trace_no", the character length must be great than or equal to 0.'
      end

      @track_trace_no = track_trace_no
    end

    # Custom attribute writer method with validation
    # @param [Object] track_trace_url Value to be assigned
    def track_trace_url=(track_trace_url)
      if !track_trace_url.nil? && track_trace_url.to_s.length > 250
        fail ArgumentError, 'invalid value for "track_trace_url", the character length must be smaller than or equal to 250.'
      end

      if !track_trace_url.nil? && track_trace_url.to_s.length < 0
        fail ArgumentError, 'invalid value for "track_trace_url", the character length must be great than or equal to 0.'
      end

      @track_trace_url = track_trace_url
    end

    # Custom attribute writer method with validation
    # @param [Object] return_track_trace_no Value to be assigned
    def return_track_trace_no=(return_track_trace_no)
      if !return_track_trace_no.nil? && return_track_trace_no.to_s.length > 50
        fail ArgumentError, 'invalid value for "return_track_trace_no", the character length must be smaller than or equal to 50.'
      end

      if !return_track_trace_no.nil? && return_track_trace_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "return_track_trace_no", the character length must be great than or equal to 0.'
      end

      @return_track_trace_no = return_track_trace_no
    end

    # Custom attribute writer method with validation
    # @param [Object] method Value to be assigned
    def method=(method)
      if !method.nil? && method.to_s.length > 50
        fail ArgumentError, 'invalid value for "method", the character length must be smaller than or equal to 50.'
      end

      if !method.nil? && method.to_s.length < 0
        fail ArgumentError, 'invalid value for "method", the character length must be great than or equal to 0.'
      end

      @method = method
    end

    # Custom attribute writer method with validation
    # @param [Object] shipped_from_country_code Value to be assigned
    def shipped_from_country_code=(shipped_from_country_code)
      if !shipped_from_country_code.nil? && shipped_from_country_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "shipped_from_country_code", the character length must be smaller than or equal to 3.'
      end

      if !shipped_from_country_code.nil? && shipped_from_country_code.to_s.length < 0
        fail ArgumentError, 'invalid value for "shipped_from_country_code", the character length must be great than or equal to 0.'
      end

      @shipped_from_country_code = shipped_from_country_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          channel_order_no == o.channel_order_no &&
          lines == o.lines &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          track_trace_no == o.track_trace_no &&
          track_trace_url == o.track_trace_url &&
          return_track_trace_no == o.return_track_trace_no &&
          method == o.method &&
          shipped_from_country_code == o.shipped_from_country_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [channel_order_no, lines, created_at, updated_at, track_trace_no, track_trace_url, return_track_trace_no, method, shipped_from_country_code].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ChannelEngineChannelApiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
