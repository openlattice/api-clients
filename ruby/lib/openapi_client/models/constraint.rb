=begin
#OpenLattice API

#OpenLattice API

The version of the OpenAPI document: 0.0.1
Contact: support@openlattice.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0-SNAPSHOT

=end

require 'date'

module OpenapiClient
  class Constraint
    attr_accessor :type

    attr_accessor :search_term

    attr_accessor :fuzzy

    attr_accessor :search_fields

    attr_accessor :property_type_id

    attr_accessor :latitude

    attr_accessor :longitude

    attr_accessor :radius

    attr_accessor :unit

    attr_accessor :zones

    attr_accessor :start

    attr_accessor :_end

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'search_term' => :'searchTerm',
        :'fuzzy' => :'fuzzy',
        :'search_fields' => :'searchFields',
        :'property_type_id' => :'propertyTypeId',
        :'latitude' => :'latitude',
        :'longitude' => :'longitude',
        :'radius' => :'radius',
        :'unit' => :'unit',
        :'zones' => :'zones',
        :'start' => :'start',
        :'_end' => :'end'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'search_term' => :'String',
        :'fuzzy' => :'Boolean',
        :'search_fields' => :'Array<SearchDetails>',
        :'property_type_id' => :'String',
        :'latitude' => :'Float',
        :'longitude' => :'Float',
        :'radius' => :'Float',
        :'unit' => :'String',
        :'zones' => :'Array<Array<Array<Float>>>',
        :'start' => :'DateTime',
        :'_end' => :'DateTime'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Constraint` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Constraint`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'search_term')
        self.search_term = attributes[:'search_term']
      end

      if attributes.key?(:'fuzzy')
        self.fuzzy = attributes[:'fuzzy']
      end

      if attributes.key?(:'search_fields')
        if (value = attributes[:'search_fields']).is_a?(Array)
          self.search_fields = value
        end
      end

      if attributes.key?(:'property_type_id')
        self.property_type_id = attributes[:'property_type_id']
      end

      if attributes.key?(:'latitude')
        self.latitude = attributes[:'latitude']
      end

      if attributes.key?(:'longitude')
        self.longitude = attributes[:'longitude']
      end

      if attributes.key?(:'radius')
        self.radius = attributes[:'radius']
      end

      if attributes.key?(:'unit')
        self.unit = attributes[:'unit']
      end

      if attributes.key?(:'zones')
        if (value = attributes[:'zones']).is_a?(Array)
          self.zones = value
        end
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'_end')
        self._end = attributes[:'_end']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ["simple", "advanced", "geoDistance", "geoPolygon", "writeDateTimeFilter"])
      return false unless type_validator.valid?(@type)
      unit_validator = EnumAttributeValidator.new('String', ["miles", "mi", "yards", "yd", "feet", "ft", "inch", "in", "kilometers", "km", "meters", "m", "centimeters", "cm", "millimeters", "mm", "nauticalmiles", "nmi", "NM"])
      return false unless unit_validator.valid?(@unit)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["simple", "advanced", "geoDistance", "geoPolygon", "writeDateTimeFilter"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit Object to be assigned
    def unit=(unit)
      validator = EnumAttributeValidator.new('String', ["miles", "mi", "yards", "yd", "feet", "ft", "inch", "in", "kilometers", "km", "meters", "m", "centimeters", "cm", "millimeters", "mm", "nauticalmiles", "nmi", "NM"])
      unless validator.valid?(unit)
        fail ArgumentError, "invalid value for \"unit\", must be one of #{validator.allowable_values}."
      end
      @unit = unit
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          search_term == o.search_term &&
          fuzzy == o.fuzzy &&
          search_fields == o.search_fields &&
          property_type_id == o.property_type_id &&
          latitude == o.latitude &&
          longitude == o.longitude &&
          radius == o.radius &&
          unit == o.unit &&
          zones == o.zones &&
          start == o.start &&
          _end == o._end
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, search_term, fuzzy, search_fields, property_type_id, latitude, longitude, radius, unit, zones, start, _end].hash
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
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
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
        OpenapiClient.const_get(type).build_from_hash(value)
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
