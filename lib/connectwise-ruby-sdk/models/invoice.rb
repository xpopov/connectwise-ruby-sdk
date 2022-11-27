
require 'date'

module ConnectWise

  class Invoice
    attr_accessor :id

    attr_accessor :invoice_number

    attr_accessor :type

    attr_accessor :status

    attr_accessor :company

    attr_accessor :bill_to_company

    attr_accessor :ship_to_company

    attr_accessor :apply_to_type

    attr_accessor :apply_to_id

    attr_accessor :attention

    attr_accessor :billing_site

    attr_accessor :billing_site_zip

    attr_accessor :shipping_site

    attr_accessor :billing_terms

    attr_accessor :reference

    attr_accessor :customer_po

    # Can be obtained via InvoiceTemplate report
    attr_accessor :template_setup_id

    # Can be obtained via InvoiceEmailTemplate report
    attr_accessor :email_template_id

    attr_accessor :add_to_batch_email_list

    attr_accessor :date

    attr_accessor :restrict_downpayment_flag

    attr_accessor :location_id

    # departmentId is only required for special invoices
    attr_accessor :department_id

    attr_accessor :territory_id

    attr_accessor :top_comment

    attr_accessor :bottom_comment

    attr_accessor :taxable_flag

    attr_accessor :tax_code

    attr_accessor :internal_notes

    attr_accessor :downpayment_previously_taxed_flag

    attr_accessor :service_total

    attr_accessor :currency

    attr_accessor :due_date

    attr_accessor :expense_total

    attr_accessor :product_total

    attr_accessor :previous_progress_applied

    attr_accessor :service_adjustment_amount

    attr_accessor :agreement_amount

    attr_accessor :downpayment_applied

    attr_accessor :subtotal

    attr_accessor :total

    attr_accessor :remaining_downpayment

    attr_accessor :sales_tax

    attr_accessor :adjustment_reason

    attr_accessor :adjusted_by

    attr_accessor :payments

    attr_accessor :credits

    attr_accessor :balance

    attr_accessor :special_invoice_flag

    attr_accessor :custom_fields

    # Metadata of the entity
    attr_accessor :_info

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
        :'invoice_number' => :'invoiceNumber',
        :'type' => :'type',
        :'status' => :'status',
        :'company' => :'company',
        :'bill_to_company' => :'billToCompany',
        :'ship_to_company' => :'shipToCompany',
        :'apply_to_type' => :'applyToType',
        :'apply_to_id' => :'applyToId',
        :'attention' => :'attention',
        :'billing_site' => :'billingSite',
        :'billing_site_zip' => :'billingSiteZip',
        :'shipping_site' => :'shippingSite',
        :'billing_terms' => :'billingTerms',
        :'reference' => :'reference',
        :'customer_po' => :'customerPO',
        :'template_setup_id' => :'templateSetupId',
        :'email_template_id' => :'emailTemplateId',
        :'add_to_batch_email_list' => :'addToBatchEmailList',
        :'date' => :'date',
        :'restrict_downpayment_flag' => :'restrictDownpaymentFlag',
        :'location_id' => :'locationId',
        :'department_id' => :'departmentId',
        :'territory_id' => :'territoryId',
        :'top_comment' => :'topComment',
        :'bottom_comment' => :'bottomComment',
        :'taxable_flag' => :'taxableFlag',
        :'tax_code' => :'taxCode',
        :'internal_notes' => :'internalNotes',
        :'downpayment_previously_taxed_flag' => :'downpaymentPreviouslyTaxedFlag',
        :'service_total' => :'serviceTotal',
        :'currency' => :'currency',
        :'due_date' => :'dueDate',
        :'expense_total' => :'expenseTotal',
        :'product_total' => :'productTotal',
        :'previous_progress_applied' => :'previousProgressApplied',
        :'service_adjustment_amount' => :'serviceAdjustmentAmount',
        :'agreement_amount' => :'agreementAmount',
        :'downpayment_applied' => :'downpaymentApplied',
        :'subtotal' => :'subtotal',
        :'total' => :'total',
        :'remaining_downpayment' => :'remainingDownpayment',
        :'sales_tax' => :'salesTax',
        :'adjustment_reason' => :'adjustmentReason',
        :'adjusted_by' => :'adjustedBy',
        :'payments' => :'payments',
        :'credits' => :'credits',
        :'balance' => :'balance',
        :'special_invoice_flag' => :'specialInvoiceFlag',
        :'custom_fields' => :'customFields',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'invoice_number' => :'String',
        :'type' => :'String',
        :'status' => :'BillingStatusReference',
        :'company' => :'CompanyReference',
        :'bill_to_company' => :'CompanyReference',
        :'ship_to_company' => :'CompanyReference',
        :'apply_to_type' => :'String',
        :'apply_to_id' => :'Integer',
        :'attention' => :'String',
        :'billing_site' => :'SiteReference',
        :'billing_site_zip' => :'String',
        :'shipping_site' => :'SiteReference',
        :'billing_terms' => :'BillingTermsReference',
        :'reference' => :'String',
        :'customer_po' => :'String',
        :'template_setup_id' => :'Integer',
        :'email_template_id' => :'Integer',
        :'add_to_batch_email_list' => :'BOOLEAN',
        :'date' => :'DateTime',
        :'restrict_downpayment_flag' => :'BOOLEAN',
        :'location_id' => :'Integer',
        :'department_id' => :'Integer',
        :'territory_id' => :'Integer',
        :'top_comment' => :'String',
        :'bottom_comment' => :'String',
        :'taxable_flag' => :'BOOLEAN',
        :'tax_code' => :'TaxCodeReference',
        :'internal_notes' => :'String',
        :'downpayment_previously_taxed_flag' => :'BOOLEAN',
        :'service_total' => :'Float',
        :'currency' => :'CurrencyReference',
        :'due_date' => :'DateTime',
        :'expense_total' => :'Float',
        :'product_total' => :'Float',
        :'previous_progress_applied' => :'Float',
        :'service_adjustment_amount' => :'Float',
        :'agreement_amount' => :'Float',
        :'downpayment_applied' => :'Float',
        :'subtotal' => :'Float',
        :'total' => :'Float',
        :'remaining_downpayment' => :'Float',
        :'sales_tax' => :'Float',
        :'adjustment_reason' => :'String',
        :'adjusted_by' => :'String',
        :'payments' => :'Float',
        :'credits' => :'Float',
        :'balance' => :'Float',
        :'special_invoice_flag' => :'BOOLEAN',
        :'custom_fields' => :'Array<CustomFieldValue>',
        :'_info' => :'Metadata'
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

      if attributes.has_key?(:'invoiceNumber')
        self.invoice_number = attributes[:'invoiceNumber']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'billToCompany')
        self.bill_to_company = attributes[:'billToCompany']
      end

      if attributes.has_key?(:'shipToCompany')
        self.ship_to_company = attributes[:'shipToCompany']
      end

      if attributes.has_key?(:'applyToType')
        self.apply_to_type = attributes[:'applyToType']
      end

      if attributes.has_key?(:'applyToId')
        self.apply_to_id = attributes[:'applyToId']
      end

      if attributes.has_key?(:'attention')
        self.attention = attributes[:'attention']
      end

      if attributes.has_key?(:'billingSite')
        self.billing_site = attributes[:'billingSite']
      end

      if attributes.has_key?(:'billingSiteZip')
        self.billing_site_zip = attributes[:'billingSiteZip']
      end

      if attributes.has_key?(:'shippingSite')
        self.shipping_site = attributes[:'shippingSite']
      end

      if attributes.has_key?(:'billingTerms')
        self.billing_terms = attributes[:'billingTerms']
      end

      if attributes.has_key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.has_key?(:'customerPO')
        self.customer_po = attributes[:'customerPO']
      end

      if attributes.has_key?(:'templateSetupId')
        self.template_setup_id = attributes[:'templateSetupId']
      end

      if attributes.has_key?(:'emailTemplateId')
        self.email_template_id = attributes[:'emailTemplateId']
      end

      if attributes.has_key?(:'addToBatchEmailList')
        self.add_to_batch_email_list = attributes[:'addToBatchEmailList']
      end

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'restrictDownpaymentFlag')
        self.restrict_downpayment_flag = attributes[:'restrictDownpaymentFlag']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'departmentId')
        self.department_id = attributes[:'departmentId']
      end

      if attributes.has_key?(:'territoryId')
        self.territory_id = attributes[:'territoryId']
      end

      if attributes.has_key?(:'topComment')
        self.top_comment = attributes[:'topComment']
      end

      if attributes.has_key?(:'bottomComment')
        self.bottom_comment = attributes[:'bottomComment']
      end

      if attributes.has_key?(:'taxableFlag')
        self.taxable_flag = attributes[:'taxableFlag']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'internalNotes')
        self.internal_notes = attributes[:'internalNotes']
      end

      if attributes.has_key?(:'downpaymentPreviouslyTaxedFlag')
        self.downpayment_previously_taxed_flag = attributes[:'downpaymentPreviouslyTaxedFlag']
      end

      if attributes.has_key?(:'serviceTotal')
        self.service_total = attributes[:'serviceTotal']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'dueDate')
        self.due_date = attributes[:'dueDate']
      end

      if attributes.has_key?(:'expenseTotal')
        self.expense_total = attributes[:'expenseTotal']
      end

      if attributes.has_key?(:'productTotal')
        self.product_total = attributes[:'productTotal']
      end

      if attributes.has_key?(:'previousProgressApplied')
        self.previous_progress_applied = attributes[:'previousProgressApplied']
      end

      if attributes.has_key?(:'serviceAdjustmentAmount')
        self.service_adjustment_amount = attributes[:'serviceAdjustmentAmount']
      end

      if attributes.has_key?(:'agreementAmount')
        self.agreement_amount = attributes[:'agreementAmount']
      end

      if attributes.has_key?(:'downpaymentApplied')
        self.downpayment_applied = attributes[:'downpaymentApplied']
      end

      if attributes.has_key?(:'subtotal')
        self.subtotal = attributes[:'subtotal']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.has_key?(:'remainingDownpayment')
        self.remaining_downpayment = attributes[:'remainingDownpayment']
      end

      if attributes.has_key?(:'salesTax')
        self.sales_tax = attributes[:'salesTax']
      end

      if attributes.has_key?(:'adjustmentReason')
        self.adjustment_reason = attributes[:'adjustmentReason']
      end

      if attributes.has_key?(:'adjustedBy')
        self.adjusted_by = attributes[:'adjustedBy']
      end

      if attributes.has_key?(:'payments')
        self.payments = attributes[:'payments']
      end

      if attributes.has_key?(:'credits')
        self.credits = attributes[:'credits']
      end

      if attributes.has_key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.has_key?(:'specialInvoiceFlag')
        self.special_invoice_flag = attributes[:'specialInvoiceFlag']
      end

      if attributes.has_key?(:'customFields')
        if (value = attributes[:'customFields']).is_a?(Array)
          self.custom_fields = value
        end
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@invoice_number.nil? && @invoice_number.to_s.length > 15
        invalid_properties.push("invalid value for 'invoice_number', the character length must be smaller than or equal to 15.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @company.nil?
        invalid_properties.push("invalid value for 'company', company cannot be nil.")
      end

      if !@attention.nil? && @attention.to_s.length > 60
        invalid_properties.push("invalid value for 'attention', the character length must be smaller than or equal to 60.")
      end

      if !@reference.nil? && @reference.to_s.length > 50
        invalid_properties.push("invalid value for 'reference', the character length must be smaller than or equal to 50.")
      end

      if !@customer_po.nil? && @customer_po.to_s.length > 50
        invalid_properties.push("invalid value for 'customer_po', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@invoice_number.nil? && @invoice_number.to_s.length > 15
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["Agreement", "CreditMemo", "DownPayment", "Miscellaneous", "Progress", "Standard"])
      return false unless type_validator.valid?(@type)
      return false if @company.nil?
      apply_to_type_validator = EnumAttributeValidator.new('String', ["All", "Agreement", "Project", "ProjectPhase", "SalesOrder", "Ticket"])
      return false unless apply_to_type_validator.valid?(@apply_to_type)
      return false if !@attention.nil? && @attention.to_s.length > 60
      return false if !@reference.nil? && @reference.to_s.length > 50
      return false if !@customer_po.nil? && @customer_po.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_number Value to be assigned
    def invoice_number=(invoice_number)

      if !invoice_number.nil? && invoice_number.to_s.length > 15
        fail ArgumentError, "invalid value for 'invoice_number', the character length must be smaller than or equal to 15."
      end

      @invoice_number = invoice_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Agreement", "CreditMemo", "DownPayment", "Miscellaneous", "Progress", "Standard"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] apply_to_type Object to be assigned
    def apply_to_type=(apply_to_type)
      validator = EnumAttributeValidator.new('String', ["All", "Agreement", "Project", "ProjectPhase", "SalesOrder", "Ticket"])
      unless validator.valid?(apply_to_type)
        fail ArgumentError, "invalid value for 'apply_to_type', must be one of #{validator.allowable_values}."
      end
      @apply_to_type = apply_to_type
    end

    # Custom attribute writer method with validation
    # @param [Object] attention Value to be assigned
    def attention=(attention)

      if !attention.nil? && attention.to_s.length > 60
        fail ArgumentError, "invalid value for 'attention', the character length must be smaller than or equal to 60."
      end

      @attention = attention
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)

      if !reference.nil? && reference.to_s.length > 50
        fail ArgumentError, "invalid value for 'reference', the character length must be smaller than or equal to 50."
      end

      @reference = reference
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_po Value to be assigned
    def customer_po=(customer_po)

      if !customer_po.nil? && customer_po.to_s.length > 50
        fail ArgumentError, "invalid value for 'customer_po', the character length must be smaller than or equal to 50."
      end

      @customer_po = customer_po
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          invoice_number == o.invoice_number &&
          type == o.type &&
          status == o.status &&
          company == o.company &&
          bill_to_company == o.bill_to_company &&
          ship_to_company == o.ship_to_company &&
          apply_to_type == o.apply_to_type &&
          apply_to_id == o.apply_to_id &&
          attention == o.attention &&
          billing_site == o.billing_site &&
          billing_site_zip == o.billing_site_zip &&
          shipping_site == o.shipping_site &&
          billing_terms == o.billing_terms &&
          reference == o.reference &&
          customer_po == o.customer_po &&
          template_setup_id == o.template_setup_id &&
          email_template_id == o.email_template_id &&
          add_to_batch_email_list == o.add_to_batch_email_list &&
          date == o.date &&
          restrict_downpayment_flag == o.restrict_downpayment_flag &&
          location_id == o.location_id &&
          department_id == o.department_id &&
          territory_id == o.territory_id &&
          top_comment == o.top_comment &&
          bottom_comment == o.bottom_comment &&
          taxable_flag == o.taxable_flag &&
          tax_code == o.tax_code &&
          internal_notes == o.internal_notes &&
          downpayment_previously_taxed_flag == o.downpayment_previously_taxed_flag &&
          service_total == o.service_total &&
          currency == o.currency &&
          due_date == o.due_date &&
          expense_total == o.expense_total &&
          product_total == o.product_total &&
          previous_progress_applied == o.previous_progress_applied &&
          service_adjustment_amount == o.service_adjustment_amount &&
          agreement_amount == o.agreement_amount &&
          downpayment_applied == o.downpayment_applied &&
          subtotal == o.subtotal &&
          total == o.total &&
          remaining_downpayment == o.remaining_downpayment &&
          sales_tax == o.sales_tax &&
          adjustment_reason == o.adjustment_reason &&
          adjusted_by == o.adjusted_by &&
          payments == o.payments &&
          credits == o.credits &&
          balance == o.balance &&
          special_invoice_flag == o.special_invoice_flag &&
          custom_fields == o.custom_fields &&
          _info == o._info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, invoice_number, type, status, company, bill_to_company, ship_to_company, apply_to_type, apply_to_id, attention, billing_site, billing_site_zip, shipping_site, billing_terms, reference, customer_po, template_setup_id, email_template_id, add_to_batch_email_list, date, restrict_downpayment_flag, location_id, department_id, territory_id, top_comment, bottom_comment, taxable_flag, tax_code, internal_notes, downpayment_previously_taxed_flag, service_total, currency, due_date, expense_total, product_total, previous_progress_applied, service_adjustment_amount, agreement_amount, downpayment_applied, subtotal, total, remaining_downpayment, sales_tax, adjustment_reason, adjusted_by, payments, credits, balance, special_invoice_flag, custom_fields, _info].hash
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
