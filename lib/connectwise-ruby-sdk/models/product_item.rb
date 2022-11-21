
require 'date'

module ConnectWise

  class ProductItem
    attr_accessor :id

    attr_accessor :catalog_item

    attr_accessor :charge_to_id

    attr_accessor :charge_to_type

    attr_accessor :description

    attr_accessor :sequence_number

    attr_accessor :quantity

    attr_accessor :price

    attr_accessor :cost

    attr_accessor :discount

    attr_accessor :price_method

    attr_accessor :billable_option

    attr_accessor :agreement

    attr_accessor :location_id

    attr_accessor :business_unit_id

    attr_accessor :vendor

    attr_accessor :vendor_sku

    attr_accessor :taxable_flag

    attr_accessor :dropship_flag

    attr_accessor :special_order_flag

    attr_accessor :phase_product_flag

    attr_accessor :cancelled_flag

    attr_accessor :quantity_cancelled

    attr_accessor :cancelled_reason

    attr_accessor :customer_description

    attr_accessor :internal_notes

    attr_accessor :product_supplied_flag

    attr_accessor :sub_contractor_ship_to_id

    attr_accessor :sub_contractor_amount_limit

    attr_accessor :recurring

    attr_accessor :sla

    attr_accessor :invoice

    attr_accessor :entity_type

    attr_accessor :forecast_detail_id

    attr_accessor :cancelled_by

    attr_accessor :cancelled_date

    attr_accessor :warehouse

    attr_accessor :warehouse_bin

    attr_accessor :purchase_date

    attr_accessor :integration_x_ref

    attr_accessor :list_price

    attr_accessor :serial_number_ids

    attr_accessor :company

    attr_accessor :forecast_status

    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :bypass_forecast_update

    attr_accessor :custom_fields

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
        :'id' => :'id',
        :'catalog_item' => :'catalogItem',
        :'charge_to_id' => :'chargeToId',
        :'charge_to_type' => :'chargeToType',
        :'description' => :'description',
        :'sequence_number' => :'sequenceNumber',
        :'quantity' => :'quantity',
        :'price' => :'price',
        :'cost' => :'cost',
        :'discount' => :'discount',
        :'price_method' => :'priceMethod',
        :'billable_option' => :'billableOption',
        :'agreement' => :'agreement',
        :'location_id' => :'locationId',
        :'business_unit_id' => :'businessUnitId',
        :'vendor' => :'vendor',
        :'vendor_sku' => :'vendorSku',
        :'taxable_flag' => :'taxableFlag',
        :'dropship_flag' => :'dropshipFlag',
        :'special_order_flag' => :'specialOrderFlag',
        :'phase_product_flag' => :'phaseProductFlag',
        :'cancelled_flag' => :'cancelledFlag',
        :'quantity_cancelled' => :'quantityCancelled',
        :'cancelled_reason' => :'cancelledReason',
        :'customer_description' => :'customerDescription',
        :'internal_notes' => :'internalNotes',
        :'product_supplied_flag' => :'productSuppliedFlag',
        :'sub_contractor_ship_to_id' => :'subContractorShipToId',
        :'sub_contractor_amount_limit' => :'subContractorAmountLimit',
        :'recurring' => :'recurring',
        :'sla' => :'sla',
        :'invoice' => :'invoice',
        :'entity_type' => :'entityType',
        :'forecast_detail_id' => :'forecastDetailId',
        :'cancelled_by' => :'cancelledBy',
        :'cancelled_date' => :'cancelledDate',
        :'warehouse' => :'warehouse',
        :'warehouse_bin' => :'warehouseBin',
        :'purchase_date' => :'purchaseDate',
        :'integration_x_ref' => :'integrationXRef',
        :'list_price' => :'listPrice',
        :'serial_number_ids' => :'serialNumberIds',
        :'company' => :'company',
        :'forecast_status' => :'forecastStatus',
        :'_info' => :'_info',
        :'bypass_forecast_update' => :'bypassForecastUpdate',
        :'custom_fields' => :'customFields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'catalog_item' => :'CatalogItemReference',
        :'charge_to_id' => :'Integer',
        :'charge_to_type' => :'String',
        :'description' => :'String',
        :'sequence_number' => :'Float',
        :'quantity' => :'Float',
        :'price' => :'Float',
        :'cost' => :'Float',
        :'discount' => :'Float',
        :'price_method' => :'String',
        :'billable_option' => :'String',
        :'agreement' => :'AgreementReference',
        :'location_id' => :'Integer',
        :'business_unit_id' => :'Integer',
        :'vendor' => :'CompanyReference',
        :'vendor_sku' => :'String',
        :'taxable_flag' => :'BOOLEAN',
        :'dropship_flag' => :'BOOLEAN',
        :'special_order_flag' => :'BOOLEAN',
        :'phase_product_flag' => :'BOOLEAN',
        :'cancelled_flag' => :'BOOLEAN',
        :'quantity_cancelled' => :'Float',
        :'cancelled_reason' => :'String',
        :'customer_description' => :'String',
        :'internal_notes' => :'String',
        :'product_supplied_flag' => :'BOOLEAN',
        :'sub_contractor_ship_to_id' => :'Integer',
        :'sub_contractor_amount_limit' => :'Float',
        :'recurring' => :'ProductRecurring',
        :'sla' => :'SLAReference',
        :'invoice' => :'InvoiceReference',
        :'entity_type' => :'EntityTypeReference',
        :'forecast_detail_id' => :'Integer',
        :'cancelled_by' => :'Integer',
        :'cancelled_date' => :'DateTime',
        :'warehouse' => :'String',
        :'warehouse_bin' => :'String',
        :'purchase_date' => :'DateTime',
        :'integration_x_ref' => :'String',
        :'list_price' => :'Float',
        :'serial_number_ids' => :'Array<Integer>',
        :'company' => :'CompanyReference',
        :'forecast_status' => :'OpportunityStatusReference',
        :'_info' => :'Metadata',
        :'bypass_forecast_update' => :'BOOLEAN',
        :'custom_fields' => :'Array<CustomFieldValue>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'catalogItem')
        self.catalog_item = attributes[:'catalogItem']
      end

      if attributes.has_key?(:'chargeToId')
        self.charge_to_id = attributes[:'chargeToId']
      end

      if attributes.has_key?(:'chargeToType')
        self.charge_to_type = attributes[:'chargeToType']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'sequenceNumber')
        self.sequence_number = attributes[:'sequenceNumber']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'discount')
        self.discount = attributes[:'discount']
      end

      if attributes.has_key?(:'priceMethod')
        self.price_method = attributes[:'priceMethod']
      end

      if attributes.has_key?(:'billableOption')
        self.billable_option = attributes[:'billableOption']
      end

      if attributes.has_key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'businessUnitId')
        self.business_unit_id = attributes[:'businessUnitId']
      end

      if attributes.has_key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

      if attributes.has_key?(:'vendorSku')
        self.vendor_sku = attributes[:'vendorSku']
      end

      if attributes.has_key?(:'taxableFlag')
        self.taxable_flag = attributes[:'taxableFlag']
      end

      if attributes.has_key?(:'dropshipFlag')
        self.dropship_flag = attributes[:'dropshipFlag']
      end

      if attributes.has_key?(:'specialOrderFlag')
        self.special_order_flag = attributes[:'specialOrderFlag']
      end

      if attributes.has_key?(:'phaseProductFlag')
        self.phase_product_flag = attributes[:'phaseProductFlag']
      end

      if attributes.has_key?(:'cancelledFlag')
        self.cancelled_flag = attributes[:'cancelledFlag']
      end

      if attributes.has_key?(:'quantityCancelled')
        self.quantity_cancelled = attributes[:'quantityCancelled']
      end

      if attributes.has_key?(:'cancelledReason')
        self.cancelled_reason = attributes[:'cancelledReason']
      end

      if attributes.has_key?(:'customerDescription')
        self.customer_description = attributes[:'customerDescription']
      end

      if attributes.has_key?(:'internalNotes')
        self.internal_notes = attributes[:'internalNotes']
      end

      if attributes.has_key?(:'productSuppliedFlag')
        self.product_supplied_flag = attributes[:'productSuppliedFlag']
      end

      if attributes.has_key?(:'subContractorShipToId')
        self.sub_contractor_ship_to_id = attributes[:'subContractorShipToId']
      end

      if attributes.has_key?(:'subContractorAmountLimit')
        self.sub_contractor_amount_limit = attributes[:'subContractorAmountLimit']
      end

      if attributes.has_key?(:'recurring')
        self.recurring = attributes[:'recurring']
      end

      if attributes.has_key?(:'sla')
        self.sla = attributes[:'sla']
      end

      if attributes.has_key?(:'invoice')
        self.invoice = attributes[:'invoice']
      end
      
      if attributes.has_key?(:'entityType')
        self.entity_type = attributes[:'entityType']
      end

      if attributes.has_key?(:'forecastDetailId')
        self.forecast_detail_id = attributes[:'forecastDetailId']
      end

      if attributes.has_key?(:'cancelledBy')
        self.cancelled_by = attributes[:'cancelledBy']
      end

      if attributes.has_key?(:'cancelledDate')
        self.cancelled_date = attributes[:'cancelledDate']
      end

      if attributes.has_key?(:'warehouse')
        self.warehouse = attributes[:'warehouse']
      end

      if attributes.has_key?(:'warehouseBin')
        self.warehouse_bin = attributes[:'warehouseBin']
      end

      if attributes.has_key?(:'purchaseDate')
        self.purchase_date = attributes[:'purchaseDate']
      end

      if attributes.has_key?(:'integrationXRef')
        self.integration_x_ref = attributes[:'integrationXRef']
      end

      if attributes.has_key?(:'listPrice')
        self.list_price = attributes[:'listPrice']
      end

      if attributes.has_key?(:'serialNumberIds')
        if (value = attributes[:'serialNumberIds']).is_a?(Array)
          self.serial_number_ids = value
        end
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'forecastStatus')
        self.forecast_status = attributes[:'forecastStatus']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

      if attributes.has_key?(:'bypassForecastUpdate')
        self.bypass_forecast_update = attributes[:'bypassForecastUpdate']
      end

      if attributes.has_key?(:'customFields')
        if (value = attributes[:'customFields']).is_a?(Array)
          self.custom_fields = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @catalog_item.nil?
        invalid_properties.push("invalid value for 'catalog_item', catalog_item cannot be nil.")
      end

      if @charge_to_id.nil?
        invalid_properties.push("invalid value for 'charge_to_id', charge_to_id cannot be nil.")
      end

      if @charge_to_type.nil?
        invalid_properties.push("invalid value for 'charge_to_type', charge_to_type cannot be nil.")
      end

      if !@description.nil? && @description.to_s.length > 2000
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 2000.")
      end

      if @billable_option.nil?
        invalid_properties.push("invalid value for 'billable_option', billable_option cannot be nil.")
      end

      if !@vendor_sku.nil? && @vendor_sku.to_s.length > 50
        invalid_properties.push("invalid value for 'vendor_sku', the character length must be smaller than or equal to 50.")
      end

      if !@cancelled_reason.nil? && @cancelled_reason.to_s.length > 100
        invalid_properties.push("invalid value for 'cancelled_reason', the character length must be smaller than or equal to 100.")
      end

      if !@customer_description.nil? && @customer_description.to_s.length > 6000
        invalid_properties.push("invalid value for 'customer_description', the character length must be smaller than or equal to 6000.")
      end

      if !@internal_notes.nil? && @internal_notes.to_s.length > 1000
        invalid_properties.push("invalid value for 'internal_notes', the character length must be smaller than or equal to 1000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @catalog_item.nil?
      return false if @charge_to_id.nil?
      return false if @charge_to_type.nil?
      charge_to_type_validator = EnumAttributeValidator.new('String', ["Ticket", "Project", "Invoice", "Opportunity", "SalesOrder"])
      return false unless charge_to_type_validator.valid?(@charge_to_type)
      return false if !@description.nil? && @description.to_s.length > 2000
      price_method_validator = EnumAttributeValidator.new('String', ["FlatRateForRange", "PercentMarkupFromCost", "PercentMarkdownFromPrice", "PricePerUnit"])
      return false unless price_method_validator.valid?(@price_method)
      return false if @billable_option.nil?
      billable_option_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge"])
      return false unless billable_option_validator.valid?(@billable_option)
      return false if !@vendor_sku.nil? && @vendor_sku.to_s.length > 50
      return false if !@cancelled_reason.nil? && @cancelled_reason.to_s.length > 100
      return false if !@customer_description.nil? && @customer_description.to_s.length > 6000
      return false if !@internal_notes.nil? && @internal_notes.to_s.length > 1000
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] charge_to_type Object to be assigned
    def charge_to_type=(charge_to_type)
      validator = EnumAttributeValidator.new('String', ["Ticket", "Project", "Invoice", "Opportunity", "SalesOrder"])
      unless validator.valid?(charge_to_type)
        fail ArgumentError, "invalid value for 'charge_to_type', must be one of #{validator.allowable_values}."
      end
      @charge_to_type = charge_to_type
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)

      if !description.nil? && description.to_s.length > 2000
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 2000."
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price_method Object to be assigned
    def price_method=(price_method)
      validator = EnumAttributeValidator.new('String', ["FlatRateForRange", "PercentMarkupFromCost", "PercentMarkdownFromPrice", "PricePerUnit"])
      unless validator.valid?(price_method)
        fail ArgumentError, "invalid value for 'price_method', must be one of #{validator.allowable_values}."
      end
      @price_method = price_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billable_option Object to be assigned
    def billable_option=(billable_option)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge"])
      unless validator.valid?(billable_option)
        fail ArgumentError, "invalid value for 'billable_option', must be one of #{validator.allowable_values}."
      end
      @billable_option = billable_option
    end

    # Custom attribute writer method with validation
    # @param [Object] vendor_sku Value to be assigned
    def vendor_sku=(vendor_sku)

      if !vendor_sku.nil? && vendor_sku.to_s.length > 50
        fail ArgumentError, "invalid value for 'vendor_sku', the character length must be smaller than or equal to 50."
      end

      @vendor_sku = vendor_sku
    end

    # Custom attribute writer method with validation
    # @param [Object] cancelled_reason Value to be assigned
    def cancelled_reason=(cancelled_reason)

      if !cancelled_reason.nil? && cancelled_reason.to_s.length > 100
        fail ArgumentError, "invalid value for 'cancelled_reason', the character length must be smaller than or equal to 100."
      end

      @cancelled_reason = cancelled_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_description Value to be assigned
    def customer_description=(customer_description)

      if !customer_description.nil? && customer_description.to_s.length > 6000
        fail ArgumentError, "invalid value for 'customer_description', the character length must be smaller than or equal to 6000."
      end

      @customer_description = customer_description
    end

    # Custom attribute writer method with validation
    # @param [Object] internal_notes Value to be assigned
    def internal_notes=(internal_notes)

      if !internal_notes.nil? && internal_notes.to_s.length > 1000
        fail ArgumentError, "invalid value for 'internal_notes', the character length must be smaller than or equal to 1000."
      end

      @internal_notes = internal_notes
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          catalog_item == o.catalog_item &&
          charge_to_id == o.charge_to_id &&
          charge_to_type == o.charge_to_type &&
          description == o.description &&
          sequence_number == o.sequence_number &&
          quantity == o.quantity &&
          price == o.price &&
          cost == o.cost &&
          discount == o.discount &&
          price_method == o.price_method &&
          billable_option == o.billable_option &&
          agreement == o.agreement &&
          location_id == o.location_id &&
          business_unit_id == o.business_unit_id &&
          vendor == o.vendor &&
          vendor_sku == o.vendor_sku &&
          taxable_flag == o.taxable_flag &&
          dropship_flag == o.dropship_flag &&
          special_order_flag == o.special_order_flag &&
          phase_product_flag == o.phase_product_flag &&
          cancelled_flag == o.cancelled_flag &&
          quantity_cancelled == o.quantity_cancelled &&
          cancelled_reason == o.cancelled_reason &&
          customer_description == o.customer_description &&
          internal_notes == o.internal_notes &&
          product_supplied_flag == o.product_supplied_flag &&
          sub_contractor_ship_to_id == o.sub_contractor_ship_to_id &&
          sub_contractor_amount_limit == o.sub_contractor_amount_limit &&
          recurring == o.recurring &&
          sla == o.sla &&
          invoice == o.invoice &&
          entity_type == o.entity_type &&
          forecast_detail_id == o.forecast_detail_id &&
          cancelled_by == o.cancelled_by &&
          cancelled_date == o.cancelled_date &&
          warehouse == o.warehouse &&
          warehouse_bin == o.warehouse_bin &&
          purchase_date == o.purchase_date &&
          integration_x_ref == o.integration_x_ref &&
          list_price == o.list_price &&
          serial_number_ids == o.serial_number_ids &&
          company == o.company &&
          forecast_status == o.forecast_status &&
          _info == o._info &&
          bypass_forecast_update == o.bypass_forecast_update &&
          custom_fields == o.custom_fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, catalog_item, charge_to_id, charge_to_type, description, sequence_number, quantity, price, cost, discount, price_method, billable_option, agreement, location_id, business_unit_id, vendor, vendor_sku, taxable_flag, dropship_flag, special_order_flag, phase_product_flag, cancelled_flag, quantity_cancelled, cancelled_reason, customer_description, internal_notes, product_supplied_flag, sub_contractor_ship_to_id, sub_contractor_amount_limit, recurring, sla, invoice, entity_type, forecast_detail_id, cancelled_by, cancelled_date, warehouse, warehouse_bin, purchase_date, integration_x_ref, list_price, serial_number_ids, company, forecast_status, _info, bypass_forecast_update, custom_fields].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = ConnectWise.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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
