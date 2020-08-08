=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2payoutsSenderInformation
    # Reference number generated by you that uniquely identifies the sender.
    attr_accessor :reference_number

    attr_accessor :account

    # First name of sender (Optional). * CTV (14) * Paymentech (30) 
    attr_accessor :first_name

    # Recipient middle initial (Optional). 
    attr_accessor :middle_initial

    # Recipient last name (Optional). * CTV (14) * Paymentech (30) 
    attr_accessor :last_name

    # Name of sender.  **Funds Disbursement**  This value is the name of the originator sending the funds disbursement. * CTV, Paymentech (30) 
    attr_accessor :name

    # Street address of sender.  **Funds Disbursement**  This value is the address of the originator sending the funds disbursement. 
    attr_accessor :address1

    # City of sender.  **Funds Disbursement**  This value is the city of the originator sending the funds disbursement. 
    attr_accessor :locality

    # Sender’s state. Use the [State, Province, and Territory Codes for the United States and Canada](https://developer.cybersource.com/library/documentation/sbc/quickref/states_and_provinces.pdf). 
    attr_accessor :administrative_area

    # Country of sender. Use the [ISO Standard Country Codes](https://developer.cybersource.com/library/documentation/sbc/quickref/countries_alpha_list.pdf). * CTV (3) 
    attr_accessor :country_code

    # Sender’s postal code. Required only for FDCCompass.
    attr_accessor :postal_code

    # Sender’s phone number. Required only for FDCCompass.
    attr_accessor :phone_number

    # Sender’s date of birth in YYYYMMDD format. Required only for FDCCompass.
    attr_accessor :date_of_birth

    # Customer's government-assigned tax identification number. 
    attr_accessor :vat_registration_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'reference_number' => :'referenceNumber',
        :'account' => :'account',
        :'first_name' => :'firstName',
        :'middle_initial' => :'middleInitial',
        :'last_name' => :'lastName',
        :'name' => :'name',
        :'address1' => :'address1',
        :'locality' => :'locality',
        :'administrative_area' => :'administrativeArea',
        :'country_code' => :'countryCode',
        :'postal_code' => :'postalCode',
        :'phone_number' => :'phoneNumber',
        :'date_of_birth' => :'dateOfBirth',
        :'vat_registration_number' => :'vatRegistrationNumber'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'reference_number' => :'String',
        :'account' => :'Ptsv2payoutsSenderInformationAccount',
        :'first_name' => :'String',
        :'middle_initial' => :'String',
        :'last_name' => :'String',
        :'name' => :'String',
        :'address1' => :'String',
        :'locality' => :'String',
        :'administrative_area' => :'String',
        :'country_code' => :'String',
        :'postal_code' => :'String',
        :'phone_number' => :'String',
        :'date_of_birth' => :'String',
        :'vat_registration_number' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'referenceNumber')
        self.reference_number = attributes[:'referenceNumber']
      end

      if attributes.has_key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'middleInitial')
        self.middle_initial = attributes[:'middleInitial']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'locality')
        self.locality = attributes[:'locality']
      end

      if attributes.has_key?(:'administrativeArea')
        self.administrative_area = attributes[:'administrativeArea']
      end

      if attributes.has_key?(:'countryCode')
        self.country_code = attributes[:'countryCode']
      end

      if attributes.has_key?(:'postalCode')
        self.postal_code = attributes[:'postalCode']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'dateOfBirth')
        self.date_of_birth = attributes[:'dateOfBirth']
      end

      if attributes.has_key?(:'vatRegistrationNumber')
        self.vat_registration_number = attributes[:'vatRegistrationNumber']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@reference_number.nil? && @reference_number.to_s.length > 19
        invalid_properties.push('invalid value for "reference_number", the character length must be smaller than or equal to 19.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 35
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 35.')
      end

      if !@middle_initial.nil? && @middle_initial.to_s.length > 1
        invalid_properties.push('invalid value for "middle_initial", the character length must be smaller than or equal to 1.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 35
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 35.')
      end

      if !@name.nil? && @name.to_s.length > 24
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 24.')
      end

      if !@address1.nil? && @address1.to_s.length > 50
        invalid_properties.push('invalid value for "address1", the character length must be smaller than or equal to 50.')
      end

      if !@locality.nil? && @locality.to_s.length > 25
        invalid_properties.push('invalid value for "locality", the character length must be smaller than or equal to 25.')
      end

      if !@administrative_area.nil? && @administrative_area.to_s.length > 2
        invalid_properties.push('invalid value for "administrative_area", the character length must be smaller than or equal to 2.')
      end

      if !@country_code.nil? && @country_code.to_s.length > 2
        invalid_properties.push('invalid value for "country_code", the character length must be smaller than or equal to 2.')
      end

      if !@postal_code.nil? && @postal_code.to_s.length > 10
        invalid_properties.push('invalid value for "postal_code", the character length must be smaller than or equal to 10.')
      end

      if !@phone_number.nil? && @phone_number.to_s.length > 20
        invalid_properties.push('invalid value for "phone_number", the character length must be smaller than or equal to 20.')
      end

      if !@date_of_birth.nil? && @date_of_birth.to_s.length > 8
        invalid_properties.push('invalid value for "date_of_birth", the character length must be smaller than or equal to 8.')
      end

      if !@date_of_birth.nil? && @date_of_birth.to_s.length < 8
        invalid_properties.push('invalid value for "date_of_birth", the character length must be great than or equal to 8.')
      end

      if !@vat_registration_number.nil? && @vat_registration_number.to_s.length > 13
        invalid_properties.push('invalid value for "vat_registration_number", the character length must be smaller than or equal to 13.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@reference_number.nil? && @reference_number.to_s.length > 19
      return false if !@first_name.nil? && @first_name.to_s.length > 35
      return false if !@middle_initial.nil? && @middle_initial.to_s.length > 1
      return false if !@last_name.nil? && @last_name.to_s.length > 35
      return false if !@name.nil? && @name.to_s.length > 24
      return false if !@address1.nil? && @address1.to_s.length > 50
      return false if !@locality.nil? && @locality.to_s.length > 25
      return false if !@administrative_area.nil? && @administrative_area.to_s.length > 2
      return false if !@country_code.nil? && @country_code.to_s.length > 2
      return false if !@postal_code.nil? && @postal_code.to_s.length > 10
      return false if !@phone_number.nil? && @phone_number.to_s.length > 20
      return false if !@date_of_birth.nil? && @date_of_birth.to_s.length > 8
      return false if !@date_of_birth.nil? && @date_of_birth.to_s.length < 8
      return false if !@vat_registration_number.nil? && @vat_registration_number.to_s.length > 13
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_number Value to be assigned
    def reference_number=(reference_number)
      if !reference_number.nil? && reference_number.to_s.length > 19
        fail ArgumentError, 'invalid value for "reference_number", the character length must be smaller than or equal to 19.'
      end

      @reference_number = reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.length > 35
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 35.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] middle_initial Value to be assigned
    def middle_initial=(middle_initial)
      if !middle_initial.nil? && middle_initial.to_s.length > 1
        fail ArgumentError, 'invalid value for "middle_initial", the character length must be smaller than or equal to 1.'
      end

      @middle_initial = middle_initial
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.length > 35
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 35.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 24
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 24.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] address1 Value to be assigned
    def address1=(address1)
      if !address1.nil? && address1.to_s.length > 50
        fail ArgumentError, 'invalid value for "address1", the character length must be smaller than or equal to 50.'
      end

      @address1 = address1
    end

    # Custom attribute writer method with validation
    # @param [Object] locality Value to be assigned
    def locality=(locality)
      if !locality.nil? && locality.to_s.length > 25
        fail ArgumentError, 'invalid value for "locality", the character length must be smaller than or equal to 25.'
      end

      @locality = locality
    end

    # Custom attribute writer method with validation
    # @param [Object] administrative_area Value to be assigned
    def administrative_area=(administrative_area)
      if !administrative_area.nil? && administrative_area.to_s.length > 2
        fail ArgumentError, 'invalid value for "administrative_area", the character length must be smaller than or equal to 2.'
      end

      @administrative_area = administrative_area
    end

    # Custom attribute writer method with validation
    # @param [Object] country_code Value to be assigned
    def country_code=(country_code)
      if !country_code.nil? && country_code.to_s.length > 2
        fail ArgumentError, 'invalid value for "country_code", the character length must be smaller than or equal to 2.'
      end

      @country_code = country_code
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      if !postal_code.nil? && postal_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "postal_code", the character length must be smaller than or equal to 10.'
      end

      @postal_code = postal_code
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if !phone_number.nil? && phone_number.to_s.length > 20
        fail ArgumentError, 'invalid value for "phone_number", the character length must be smaller than or equal to 20.'
      end

      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] date_of_birth Value to be assigned
    def date_of_birth=(date_of_birth)
      if !date_of_birth.nil? && date_of_birth.to_s.length > 8
        fail ArgumentError, 'invalid value for "date_of_birth", the character length must be smaller than or equal to 8.'
      end

      if !date_of_birth.nil? && date_of_birth.to_s.length < 8
        fail ArgumentError, 'invalid value for "date_of_birth", the character length must be great than or equal to 8.'
      end

      @date_of_birth = date_of_birth
    end

    # Custom attribute writer method with validation
    # @param [Object] vat_registration_number Value to be assigned
    def vat_registration_number=(vat_registration_number)
      if !vat_registration_number.nil? && vat_registration_number.to_s.length > 13
        fail ArgumentError, 'invalid value for "vat_registration_number", the character length must be smaller than or equal to 13.'
      end

      @vat_registration_number = vat_registration_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          reference_number == o.reference_number &&
          account == o.account &&
          first_name == o.first_name &&
          middle_initial == o.middle_initial &&
          last_name == o.last_name &&
          name == o.name &&
          address1 == o.address1 &&
          locality == o.locality &&
          administrative_area == o.administrative_area &&
          country_code == o.country_code &&
          postal_code == o.postal_code &&
          phone_number == o.phone_number &&
          date_of_birth == o.date_of_birth &&
          vat_registration_number == o.vat_registration_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [reference_number, account, first_name, middle_initial, last_name, name, address1, locality, administrative_area, country_code, postal_code, phone_number, date_of_birth, vat_registration_number].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
