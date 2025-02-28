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
  class ChannelOrderRequest
    attr_accessor :billing_address

    attr_accessor :shipping_address

    # The unique order reference used by the Channel.
    attr_accessor :channel_order_no

    # Optional. Is a business order (default value is false).  If not provided the VAT Number will be checked. If a VAT Number is found, IsBusinessOrder will be set to true.  No VAT will be calculated when set to true.
    attr_accessor :is_business_order

    # Optional. Is the MPN used as key for the product (default value is false).
    attr_accessor :key_is_merchant_product_no

    # The order lines.
    attr_accessor :lines

    # The customer's telephone number.
    attr_accessor :phone

    # The customer's email.
    attr_accessor :email

    # Optional. A company's chamber of commerce number.
    attr_accessor :company_registration_no

    # Optional. A company's VAT number.
    attr_accessor :vat_no

    # The payment method used on the order.
    attr_accessor :payment_method

    # Reference or transaction id for the payment
    attr_accessor :payment_reference_no

    # The shipping fee including VAT  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :shipping_costs_incl_vat

    # The currency code for the amounts of the order.
    attr_accessor :currency_code

    # The date the order was created at the channel.
    attr_accessor :order_date

    # The unique customer reference used by the channel.
    attr_accessor :channel_customer_no

    # Extra data on the order.
    attr_accessor :extra_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'billing_address' => :'BillingAddress',
        :'shipping_address' => :'ShippingAddress',
        :'channel_order_no' => :'ChannelOrderNo',
        :'is_business_order' => :'IsBusinessOrder',
        :'key_is_merchant_product_no' => :'KeyIsMerchantProductNo',
        :'lines' => :'Lines',
        :'phone' => :'Phone',
        :'email' => :'Email',
        :'company_registration_no' => :'CompanyRegistrationNo',
        :'vat_no' => :'VatNo',
        :'payment_method' => :'PaymentMethod',
        :'payment_reference_no' => :'PaymentReferenceNo',
        :'shipping_costs_incl_vat' => :'ShippingCostsInclVat',
        :'currency_code' => :'CurrencyCode',
        :'order_date' => :'OrderDate',
        :'channel_customer_no' => :'ChannelCustomerNo',
        :'extra_data' => :'ExtraData'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'billing_address' => :'ChannelAddressRequest',
        :'shipping_address' => :'ChannelAddressRequest',
        :'channel_order_no' => :'String',
        :'is_business_order' => :'Boolean',
        :'key_is_merchant_product_no' => :'Boolean',
        :'lines' => :'Array<ChannelOrderLineRequest>',
        :'phone' => :'String',
        :'email' => :'String',
        :'company_registration_no' => :'String',
        :'vat_no' => :'String',
        :'payment_method' => :'String',
        :'payment_reference_no' => :'String',
        :'shipping_costs_incl_vat' => :'Float',
        :'currency_code' => :'String',
        :'order_date' => :'Time',
        :'channel_customer_no' => :'String',
        :'extra_data' => :'Hash<String, String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'is_business_order',
        :'phone',
        :'company_registration_no',
        :'vat_no',
        :'payment_method',
        :'payment_reference_no',
        :'channel_customer_no',
        :'extra_data'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChannelEngineChannelApiClient::ChannelOrderRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChannelEngineChannelApiClient::ChannelOrderRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'channel_order_no')
        self.channel_order_no = attributes[:'channel_order_no']
      end

      if attributes.key?(:'is_business_order')
        self.is_business_order = attributes[:'is_business_order']
      end

      if attributes.key?(:'key_is_merchant_product_no')
        self.key_is_merchant_product_no = attributes[:'key_is_merchant_product_no']
      end

      if attributes.key?(:'lines')
        if (value = attributes[:'lines']).is_a?(Array)
          self.lines = value
        end
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'company_registration_no')
        self.company_registration_no = attributes[:'company_registration_no']
      end

      if attributes.key?(:'vat_no')
        self.vat_no = attributes[:'vat_no']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'payment_reference_no')
        self.payment_reference_no = attributes[:'payment_reference_no']
      end

      if attributes.key?(:'shipping_costs_incl_vat')
        self.shipping_costs_incl_vat = attributes[:'shipping_costs_incl_vat']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'order_date')
        self.order_date = attributes[:'order_date']
      end

      if attributes.key?(:'channel_customer_no')
        self.channel_customer_no = attributes[:'channel_customer_no']
      end

      if attributes.key?(:'extra_data')
        if (value = attributes[:'extra_data']).is_a?(Hash)
          self.extra_data = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @billing_address.nil?
        invalid_properties.push('invalid value for "billing_address", billing_address cannot be nil.')
      end

      if @shipping_address.nil?
        invalid_properties.push('invalid value for "shipping_address", shipping_address cannot be nil.')
      end

      if @channel_order_no.nil?
        invalid_properties.push('invalid value for "channel_order_no", channel_order_no cannot be nil.')
      end

      if @channel_order_no.to_s.length > 60
        invalid_properties.push('invalid value for "channel_order_no", the character length must be smaller than or equal to 60.')
      end

      if @channel_order_no.to_s.length < 0
        invalid_properties.push('invalid value for "channel_order_no", the character length must be great than or equal to 0.')
      end

      if @lines.nil?
        invalid_properties.push('invalid value for "lines", lines cannot be nil.')
      end

      if !@phone.nil? && @phone.to_s.length > 50
        invalid_properties.push('invalid value for "phone", the character length must be smaller than or equal to 50.')
      end

      if !@phone.nil? && @phone.to_s.length < 0
        invalid_properties.push('invalid value for "phone", the character length must be great than or equal to 0.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @email.to_s.length > 250
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 250.')
      end

      if @email.to_s.length < 0
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 0.')
      end

      if !@company_registration_no.nil? && @company_registration_no.to_s.length > 50
        invalid_properties.push('invalid value for "company_registration_no", the character length must be smaller than or equal to 50.')
      end

      if !@company_registration_no.nil? && @company_registration_no.to_s.length < 0
        invalid_properties.push('invalid value for "company_registration_no", the character length must be great than or equal to 0.')
      end

      if !@vat_no.nil? && @vat_no.to_s.length > 50
        invalid_properties.push('invalid value for "vat_no", the character length must be smaller than or equal to 50.')
      end

      if !@vat_no.nil? && @vat_no.to_s.length < 0
        invalid_properties.push('invalid value for "vat_no", the character length must be great than or equal to 0.')
      end

      if !@payment_method.nil? && @payment_method.to_s.length > 50
        invalid_properties.push('invalid value for "payment_method", the character length must be smaller than or equal to 50.')
      end

      if !@payment_method.nil? && @payment_method.to_s.length < 0
        invalid_properties.push('invalid value for "payment_method", the character length must be great than or equal to 0.')
      end

      if !@payment_reference_no.nil? && @payment_reference_no.to_s.length > 250
        invalid_properties.push('invalid value for "payment_reference_no", the character length must be smaller than or equal to 250.')
      end

      if !@payment_reference_no.nil? && @payment_reference_no.to_s.length < 0
        invalid_properties.push('invalid value for "payment_reference_no", the character length must be great than or equal to 0.')
      end

      if @shipping_costs_incl_vat.nil?
        invalid_properties.push('invalid value for "shipping_costs_incl_vat", shipping_costs_incl_vat cannot be nil.')
      end

      if @shipping_costs_incl_vat < 0
        invalid_properties.push('invalid value for "shipping_costs_incl_vat", must be greater than or equal to 0.')
      end

      if @currency_code.nil?
        invalid_properties.push('invalid value for "currency_code", currency_code cannot be nil.')
      end

      if @currency_code.to_s.length > 3
        invalid_properties.push('invalid value for "currency_code", the character length must be smaller than or equal to 3.')
      end

      if @order_date.nil?
        invalid_properties.push('invalid value for "order_date", order_date cannot be nil.')
      end

      if !@channel_customer_no.nil? && @channel_customer_no.to_s.length > 50
        invalid_properties.push('invalid value for "channel_customer_no", the character length must be smaller than or equal to 50.')
      end

      if !@channel_customer_no.nil? && @channel_customer_no.to_s.length < 0
        invalid_properties.push('invalid value for "channel_customer_no", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @billing_address.nil?
      return false if @shipping_address.nil?
      return false if @channel_order_no.nil?
      return false if @channel_order_no.to_s.length > 60
      return false if @channel_order_no.to_s.length < 0
      return false if @lines.nil?
      return false if !@phone.nil? && @phone.to_s.length > 50
      return false if !@phone.nil? && @phone.to_s.length < 0
      return false if @email.nil?
      return false if @email.to_s.length > 250
      return false if @email.to_s.length < 0
      return false if !@company_registration_no.nil? && @company_registration_no.to_s.length > 50
      return false if !@company_registration_no.nil? && @company_registration_no.to_s.length < 0
      return false if !@vat_no.nil? && @vat_no.to_s.length > 50
      return false if !@vat_no.nil? && @vat_no.to_s.length < 0
      return false if !@payment_method.nil? && @payment_method.to_s.length > 50
      return false if !@payment_method.nil? && @payment_method.to_s.length < 0
      return false if !@payment_reference_no.nil? && @payment_reference_no.to_s.length > 250
      return false if !@payment_reference_no.nil? && @payment_reference_no.to_s.length < 0
      return false if @shipping_costs_incl_vat.nil?
      return false if @shipping_costs_incl_vat < 0
      return false if @currency_code.nil?
      return false if @currency_code.to_s.length > 3
      return false if @order_date.nil?
      return false if !@channel_customer_no.nil? && @channel_customer_no.to_s.length > 50
      return false if !@channel_customer_no.nil? && @channel_customer_no.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] channel_order_no Value to be assigned
    def channel_order_no=(channel_order_no)
      if channel_order_no.nil?
        fail ArgumentError, 'channel_order_no cannot be nil'
      end

      if channel_order_no.to_s.length > 60
        fail ArgumentError, 'invalid value for "channel_order_no", the character length must be smaller than or equal to 60.'
      end

      if channel_order_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "channel_order_no", the character length must be great than or equal to 0.'
      end

      @channel_order_no = channel_order_no
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      if !phone.nil? && phone.to_s.length > 50
        fail ArgumentError, 'invalid value for "phone", the character length must be smaller than or equal to 50.'
      end

      if !phone.nil? && phone.to_s.length < 0
        fail ArgumentError, 'invalid value for "phone", the character length must be great than or equal to 0.'
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, 'email cannot be nil'
      end

      if email.to_s.length > 250
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 250.'
      end

      if email.to_s.length < 0
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 0.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] company_registration_no Value to be assigned
    def company_registration_no=(company_registration_no)
      if !company_registration_no.nil? && company_registration_no.to_s.length > 50
        fail ArgumentError, 'invalid value for "company_registration_no", the character length must be smaller than or equal to 50.'
      end

      if !company_registration_no.nil? && company_registration_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "company_registration_no", the character length must be great than or equal to 0.'
      end

      @company_registration_no = company_registration_no
    end

    # Custom attribute writer method with validation
    # @param [Object] vat_no Value to be assigned
    def vat_no=(vat_no)
      if !vat_no.nil? && vat_no.to_s.length > 50
        fail ArgumentError, 'invalid value for "vat_no", the character length must be smaller than or equal to 50.'
      end

      if !vat_no.nil? && vat_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "vat_no", the character length must be great than or equal to 0.'
      end

      @vat_no = vat_no
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_method Value to be assigned
    def payment_method=(payment_method)
      if !payment_method.nil? && payment_method.to_s.length > 50
        fail ArgumentError, 'invalid value for "payment_method", the character length must be smaller than or equal to 50.'
      end

      if !payment_method.nil? && payment_method.to_s.length < 0
        fail ArgumentError, 'invalid value for "payment_method", the character length must be great than or equal to 0.'
      end

      @payment_method = payment_method
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_reference_no Value to be assigned
    def payment_reference_no=(payment_reference_no)
      if !payment_reference_no.nil? && payment_reference_no.to_s.length > 250
        fail ArgumentError, 'invalid value for "payment_reference_no", the character length must be smaller than or equal to 250.'
      end

      if !payment_reference_no.nil? && payment_reference_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "payment_reference_no", the character length must be great than or equal to 0.'
      end

      @payment_reference_no = payment_reference_no
    end

    # Custom attribute writer method with validation
    # @param [Object] shipping_costs_incl_vat Value to be assigned
    def shipping_costs_incl_vat=(shipping_costs_incl_vat)
      if shipping_costs_incl_vat.nil?
        fail ArgumentError, 'shipping_costs_incl_vat cannot be nil'
      end

      if shipping_costs_incl_vat < 0
        fail ArgumentError, 'invalid value for "shipping_costs_incl_vat", must be greater than or equal to 0.'
      end

      @shipping_costs_incl_vat = shipping_costs_incl_vat
    end

    # Custom attribute writer method with validation
    # @param [Object] currency_code Value to be assigned
    def currency_code=(currency_code)
      if currency_code.nil?
        fail ArgumentError, 'currency_code cannot be nil'
      end

      if currency_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency_code", the character length must be smaller than or equal to 3.'
      end

      @currency_code = currency_code
    end

    # Custom attribute writer method with validation
    # @param [Object] channel_customer_no Value to be assigned
    def channel_customer_no=(channel_customer_no)
      if !channel_customer_no.nil? && channel_customer_no.to_s.length > 50
        fail ArgumentError, 'invalid value for "channel_customer_no", the character length must be smaller than or equal to 50.'
      end

      if !channel_customer_no.nil? && channel_customer_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "channel_customer_no", the character length must be great than or equal to 0.'
      end

      @channel_customer_no = channel_customer_no
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          billing_address == o.billing_address &&
          shipping_address == o.shipping_address &&
          channel_order_no == o.channel_order_no &&
          is_business_order == o.is_business_order &&
          key_is_merchant_product_no == o.key_is_merchant_product_no &&
          lines == o.lines &&
          phone == o.phone &&
          email == o.email &&
          company_registration_no == o.company_registration_no &&
          vat_no == o.vat_no &&
          payment_method == o.payment_method &&
          payment_reference_no == o.payment_reference_no &&
          shipping_costs_incl_vat == o.shipping_costs_incl_vat &&
          currency_code == o.currency_code &&
          order_date == o.order_date &&
          channel_customer_no == o.channel_customer_no &&
          extra_data == o.extra_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [billing_address, shipping_address, channel_order_no, is_business_order, key_is_merchant_product_no, lines, phone, email, company_registration_no, vat_no, payment_method, payment_reference_no, shipping_costs_incl_vat, currency_code, order_date, channel_customer_no, extra_data].hash
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
