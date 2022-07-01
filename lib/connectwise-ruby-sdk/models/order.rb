
require 'date'

module ConnectWise

  class Order
    attr_accessor :id

    attr_accessor :company

    attr_accessor :contact

    attr_accessor :phone

    attr_accessor :phone_ext

    attr_accessor :email

    attr_accessor :site

    attr_accessor :status

    attr_accessor :opportunity

    attr_accessor :order_date

    attr_accessor :due_date

    attr_accessor :billing_terms

    attr_accessor :tax_code

    attr_accessor :po_number

    attr_accessor :location_id

    attr_accessor :department

    attr_accessor :business_unit_id

    attr_accessor :sales_rep

    attr_accessor :notes

    attr_accessor :bill_closed_flag

    attr_accessor :bill_shipped_flag

    attr_accessor :restrict_downpayment_flag

    attr_accessor :description

    attr_accessor :top_comment_flag

    attr_accessor :bottom_comment_flag

    attr_accessor :ship_to_company

    attr_accessor :ship_to_contact

    attr_accessor :ship_to_site

    attr_accessor :bill_to_company

    attr_accessor :bill_to_contact

    attr_accessor :bill_to_site

    attr_accessor :product_ids

    attr_accessor :document_ids

    attr_accessor :invoice_ids

    attr_accessor :config_ids

    attr_accessor :total

    attr_accessor :tax_total

    attr_accessor :currency

    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :custom_fields


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'company' => :'company',
        :'contact' => :'contact',
        :'phone' => :'phone',
        :'phone_ext' => :'phoneExt',
        :'email' => :'email',
        :'site' => :'site',
        :'status' => :'status',
        :'opportunity' => :'opportunity',
        :'order_date' => :'orderDate',
        :'due_date' => :'dueDate',
        :'billing_terms' => :'billingTerms',
        :'tax_code' => :'taxCode',
        :'po_number' => :'poNumber',
        :'location_id' => :'locationId',
        :'department' => :'department',
        :'business_unit_id' => :'businessUnitId',
        :'sales_rep' => :'salesRep',
        :'notes' => :'notes',
        :'bill_closed_flag' => :'billClosedFlag',
        :'bill_shipped_flag' => :'billShippedFlag',
        :'restrict_downpayment_flag' => :'restrictDownpaymentFlag',
        :'description' => :'description',
        :'top_comment_flag' => :'topCommentFlag',
        :'bottom_comment_flag' => :'bottomCommentFlag',
        :'ship_to_company' => :'shipToCompany',
        :'ship_to_contact' => :'shipToContact',
        :'ship_to_site' => :'shipToSite',
        :'bill_to_company' => :'billToCompany',
        :'bill_to_contact' => :'billToContact',
        :'bill_to_site' => :'billToSite',
        :'product_ids' => :'productIds',
        :'document_ids' => :'documentIds',
        :'invoice_ids' => :'invoiceIds',
        :'config_ids' => :'configIds',
        :'total' => :'total',
        :'tax_total' => :'taxTotal',
        :'currency' => :'currency',
        :'_info' => :'_info',
        :'custom_fields' => :'customFields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'company' => :'CompanyReference',
        :'contact' => :'ContactReference',
        :'phone' => :'String',
        :'phone_ext' => :'String',
        :'email' => :'String',
        :'site' => :'SiteReference',
        :'status' => :'OrderStatusReference',
        :'opportunity' => :'OpportunityReference',
        :'order_date' => :'DateTime',
        :'due_date' => :'DateTime',
        :'billing_terms' => :'BillingTermsReference',
        :'tax_code' => :'TaxCodeReference',
        :'po_number' => :'String',
        :'location_id' => :'Integer',
        :'department' => :'ContactDepartmentReference',
        :'business_unit_id' => :'Integer',
        :'sales_rep' => :'MemberReference',
        :'notes' => :'String',
        :'bill_closed_flag' => :'BOOLEAN',
        :'bill_shipped_flag' => :'BOOLEAN',
        :'restrict_downpayment_flag' => :'BOOLEAN',
        :'description' => :'String',
        :'top_comment_flag' => :'BOOLEAN',
        :'bottom_comment_flag' => :'BOOLEAN',
        :'ship_to_company' => :'CompanyReference',
        :'ship_to_contact' => :'ContactReference',
        :'ship_to_site' => :'SiteReference',
        :'bill_to_company' => :'CompanyReference',
        :'bill_to_contact' => :'ContactReference',
        :'bill_to_site' => :'SiteReference',
        :'product_ids' => :'Array<Integer>',
        :'document_ids' => :'Array<Integer>',
        :'invoice_ids' => :'Array<Integer>',
        :'config_ids' => :'Array<Integer>',
        :'total' => :'Float',
        :'tax_total' => :'Float',
        :'currency' => :'CurrencyReference',
        :'_info' => :'Metadata',
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

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'phoneExt')
        self.phone_ext = attributes[:'phoneExt']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'opportunity')
        self.opportunity = attributes[:'opportunity']
      end

      if attributes.has_key?(:'orderDate')
        self.order_date = attributes[:'orderDate']
      end

      if attributes.has_key?(:'dueDate')
        self.due_date = attributes[:'dueDate']
      end

      if attributes.has_key?(:'billingTerms')
        self.billing_terms = attributes[:'billingTerms']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'poNumber')
        self.po_number = attributes[:'poNumber']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'businessUnitId')
        self.business_unit_id = attributes[:'businessUnitId']
      end

      if attributes.has_key?(:'salesRep')
        self.sales_rep = attributes[:'salesRep']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'billClosedFlag')
        self.bill_closed_flag = attributes[:'billClosedFlag']
      end

      if attributes.has_key?(:'billShippedFlag')
        self.bill_shipped_flag = attributes[:'billShippedFlag']
      end

      if attributes.has_key?(:'restrictDownpaymentFlag')
        self.restrict_downpayment_flag = attributes[:'restrictDownpaymentFlag']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'topCommentFlag')
        self.top_comment_flag = attributes[:'topCommentFlag']
      end

      if attributes.has_key?(:'bottomCommentFlag')
        self.bottom_comment_flag = attributes[:'bottomCommentFlag']
      end

      if attributes.has_key?(:'shipToCompany')
        self.ship_to_company = attributes[:'shipToCompany']
      end

      if attributes.has_key?(:'shipToContact')
        self.ship_to_contact = attributes[:'shipToContact']
      end

      if attributes.has_key?(:'shipToSite')
        self.ship_to_site = attributes[:'shipToSite']
      end

      if attributes.has_key?(:'billToCompany')
        self.bill_to_company = attributes[:'billToCompany']
      end

      if attributes.has_key?(:'billToContact')
        self.bill_to_contact = attributes[:'billToContact']
      end

      if attributes.has_key?(:'billToSite')
        self.bill_to_site = attributes[:'billToSite']
      end

      if attributes.has_key?(:'productIds')
        if (value = attributes[:'productIds']).is_a?(Array)
          self.product_ids = value
        end
      end

      if attributes.has_key?(:'documentIds')
        if (value = attributes[:'documentIds']).is_a?(Array)
          self.document_ids = value
        end
      end

      if attributes.has_key?(:'invoiceIds')
        if (value = attributes[:'invoiceIds']).is_a?(Array)
          self.invoice_ids = value
        end
      end

      if attributes.has_key?(:'configIds')
        if (value = attributes[:'configIds']).is_a?(Array)
          self.config_ids = value
        end
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.has_key?(:'taxTotal')
        self.tax_total = attributes[:'taxTotal']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
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
      if @company.nil?
        invalid_properties.push("invalid value for 'company', company cannot be nil.")
      end

      if @status.nil?
        invalid_properties.push("invalid value for 'status', status cannot be nil.")
      end

      if !@po_number.nil? && @po_number.to_s.length > 50
        invalid_properties.push("invalid value for 'po_number', the character length must be smaller than or equal to 50.")
      end

      if @sales_rep.nil?
        invalid_properties.push("invalid value for 'sales_rep', sales_rep cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @company.nil?
      return false if @status.nil?
      return false if !@po_number.nil? && @po_number.to_s.length > 50
      return false if @sales_rep.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] po_number Value to be assigned
    def po_number=(po_number)

      if !po_number.nil? && po_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'po_number', the character length must be smaller than or equal to 50."
      end

      @po_number = po_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          company == o.company &&
          contact == o.contact &&
          phone == o.phone &&
          phone_ext == o.phone_ext &&
          email == o.email &&
          site == o.site &&
          status == o.status &&
          opportunity == o.opportunity &&
          order_date == o.order_date &&
          due_date == o.due_date &&
          billing_terms == o.billing_terms &&
          tax_code == o.tax_code &&
          po_number == o.po_number &&
          location_id == o.location_id &&
          business_unit_id == o.business_unit_id &&
          sales_rep == o.sales_rep &&
          notes == o.notes &&
          bill_closed_flag == o.bill_closed_flag &&
          bill_shipped_flag == o.bill_shipped_flag &&
          restrict_downpayment_flag == o.restrict_downpayment_flag &&
          description == o.description &&
          top_comment_flag == o.top_comment_flag &&
          bottom_comment_flag == o.bottom_comment_flag &&
          ship_to_company == o.ship_to_company &&
          ship_to_contact == o.ship_to_contact &&
          ship_to_site == o.ship_to_site &&
          bill_to_company == o.bill_to_company &&
          bill_to_contact == o.bill_to_contact &&
          bill_to_site == o.bill_to_site &&
          product_ids == o.product_ids &&
          document_ids == o.document_ids &&
          invoice_ids == o.invoice_ids &&
          config_ids == o.config_ids &&
          total == o.total &&
          tax_total == o.tax_total &&
          currency == o.currency &&
          _info == o._info &&
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
      [id, company, contact, phone, phone_ext, email, site, status, opportunity, order_date, due_date, billing_terms, tax_code, po_number, location_id, business_unit_id, sales_rep, notes, bill_closed_flag, bill_shipped_flag, restrict_downpayment_flag, description, top_comment_flag, bottom_comment_flag, ship_to_company, ship_to_contact, ship_to_site, bill_to_company, bill_to_contact, bill_to_site, product_ids, document_ids, invoice_ids, config_ids, total, tax_total, currency, _info, custom_fields].hash
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
