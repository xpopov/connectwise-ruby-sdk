
require 'date'

module ConnectWise

  class Agreement
    attr_accessor :id

    attr_accessor :name

    attr_accessor :type

    attr_accessor :company

    attr_accessor :contact

    attr_accessor :sub_contract_company

    attr_accessor :sub_contract_contact

    attr_accessor :parent_agreement_id

    attr_accessor :customer_po

    attr_accessor :location_id

    attr_accessor :business_unit_id

    attr_accessor :restrict_location_flag

    attr_accessor :restrict_department_flag

    attr_accessor :start_date

    attr_accessor :end_date

    attr_accessor :no_ending_date_flag

    attr_accessor :opportunity

    attr_accessor :cancelled_flag

    attr_accessor :date_cancelled

    attr_accessor :reason_cancelled

    attr_accessor :sla_id

    attr_accessor :work_order

    attr_accessor :internal_notes

    attr_accessor :application_units

    attr_accessor :application_limit

    attr_accessor :application_cycle

    attr_accessor :application_unlimited_flag

    attr_accessor :one_time_flag

    attr_accessor :cover_agreement_time

    attr_accessor :cover_agreement_product

    attr_accessor :cover_agreement_expense

    attr_accessor :cover_sales_tax

    attr_accessor :carry_over_unused

    attr_accessor :allow_overruns

    attr_accessor :expired_days

    attr_accessor :limit

    attr_accessor :expire_when_zero

    attr_accessor :charge_to_firm

    attr_accessor :employee_comp_rate

    attr_accessor :employee_comp_not_exceed

    attr_accessor :comp_hourly_rate

    attr_accessor :comp_limit_amount

    attr_accessor :bill_cycle_id

    attr_accessor :bill_one_time_flag

    attr_accessor :bill_terms_id

    attr_accessor :invoicing_cycle

    attr_accessor :bill_to_company

    attr_accessor :bill_to_site

    attr_accessor :bill_amount

    attr_accessor :taxable

    attr_accessor :prorate_first_bill

    attr_accessor :bill_start_date

    attr_accessor :tax_code_id

    attr_accessor :restrict_down_payment

    attr_accessor :prorate_flag

    attr_accessor :invoice_description

    attr_accessor :top_comment

    attr_accessor :bottom_comment

    attr_accessor :work_role

    attr_accessor :work_type

    attr_accessor :project_type_id

    attr_accessor :invoice_template_setup_id

    attr_accessor :bill_time

    attr_accessor :bill_expenses

    attr_accessor :bill_products

    attr_accessor :billable_time_invoice

    attr_accessor :billable_expense_invoice

    attr_accessor :billable_product_invoice

    attr_accessor :currency

    attr_accessor :period_type

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
        :'name' => :'name',
        :'type' => :'type',
        :'company' => :'company',
        :'contact' => :'contact',
        :'sub_contract_company' => :'subContractCompany',
        :'sub_contract_contact' => :'subContractContact',
        :'parent_agreement_id' => :'parentAgreementId',
        :'customer_po' => :'customerPO',
        :'location_id' => :'locationId',
        :'business_unit_id' => :'businessUnitId',
        :'restrict_location_flag' => :'restrictLocationFlag',
        :'restrict_department_flag' => :'restrictDepartmentFlag',
        :'start_date' => :'startDate',
        :'end_date' => :'endDate',
        :'no_ending_date_flag' => :'noEndingDateFlag',
        :'opportunity' => :'opportunity',
        :'cancelled_flag' => :'cancelledFlag',
        :'date_cancelled' => :'dateCancelled',
        :'reason_cancelled' => :'reasonCancelled',
        :'sla_id' => :'slaId',
        :'work_order' => :'workOrder',
        :'internal_notes' => :'internalNotes',
        :'application_units' => :'applicationUnits',
        :'application_limit' => :'applicationLimit',
        :'application_cycle' => :'applicationCycle',
        :'application_unlimited_flag' => :'applicationUnlimitedFlag',
        :'one_time_flag' => :'oneTimeFlag',
        :'cover_agreement_time' => :'coverAgreementTime',
        :'cover_agreement_product' => :'coverAgreementProduct',
        :'cover_agreement_expense' => :'coverAgreementExpense',
        :'cover_sales_tax' => :'coverSalesTax',
        :'carry_over_unused' => :'carryOverUnused',
        :'allow_overruns' => :'allowOverruns',
        :'expired_days' => :'expiredDays',
        :'limit' => :'limit',
        :'expire_when_zero' => :'expireWhenZero',
        :'charge_to_firm' => :'chargeToFirm',
        :'employee_comp_rate' => :'employeeCompRate',
        :'employee_comp_not_exceed' => :'employeeCompNotExceed',
        :'comp_hourly_rate' => :'compHourlyRate',
        :'comp_limit_amount' => :'compLimitAmount',
        :'bill_cycle_id' => :'billCycleId',
        :'bill_one_time_flag' => :'billOneTimeFlag',
        :'bill_terms_id' => :'billTermsId',
        :'invoicing_cycle' => :'invoicingCycle',
        :'bill_to_company' => :'billToCompany',
        :'bill_to_site' => :'billToSite',
        :'bill_amount' => :'billAmount',
        :'taxable' => :'taxable',
        :'prorate_first_bill' => :'prorateFirstBill',
        :'bill_start_date' => :'billStartDate',
        :'tax_code_id' => :'taxCodeId',
        :'restrict_down_payment' => :'restrictDownPayment',
        :'prorate_flag' => :'prorateFlag',
        :'invoice_description' => :'invoiceDescription',
        :'top_comment' => :'topComment',
        :'bottom_comment' => :'bottomComment',
        :'work_role' => :'workRole',
        :'work_type' => :'workType',
        :'project_type_id' => :'projectTypeId',
        :'invoice_template_setup_id' => :'invoiceTemplateSetupId',
        :'bill_time' => :'billTime',
        :'bill_expenses' => :'billExpenses',
        :'bill_products' => :'billProducts',
        :'billable_time_invoice' => :'billableTimeInvoice',
        :'billable_expense_invoice' => :'billableExpenseInvoice',
        :'billable_product_invoice' => :'billableProductInvoice',
        :'currency' => :'currency',
        :'period_type' => :'periodType',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'type' => :'AgreementTypeReference',
        :'company' => :'CompanyReference',
        :'contact' => :'ContactReference',
        :'sub_contract_company' => :'CompanyReference',
        :'sub_contract_contact' => :'ContactReference',
        :'parent_agreement_id' => :'Integer',
        :'customer_po' => :'String',
        :'location_id' => :'Integer',
        :'business_unit_id' => :'Integer',
        :'restrict_location_flag' => :'BOOLEAN',
        :'restrict_department_flag' => :'BOOLEAN',
        :'start_date' => :'DateTime',
        :'end_date' => :'DateTime',
        :'no_ending_date_flag' => :'BOOLEAN',
        :'opportunity' => :'OpportunityReference',
        :'cancelled_flag' => :'BOOLEAN',
        :'date_cancelled' => :'DateTime',
        :'reason_cancelled' => :'String',
        :'sla_id' => :'Integer',
        :'work_order' => :'String',
        :'internal_notes' => :'String',
        :'application_units' => :'String',
        :'application_limit' => :'Float',
        :'application_cycle' => :'String',
        :'application_unlimited_flag' => :'BOOLEAN',
        :'one_time_flag' => :'BOOLEAN',
        :'cover_agreement_time' => :'BOOLEAN',
        :'cover_agreement_product' => :'BOOLEAN',
        :'cover_agreement_expense' => :'BOOLEAN',
        :'cover_sales_tax' => :'BOOLEAN',
        :'carry_over_unused' => :'BOOLEAN',
        :'allow_overruns' => :'BOOLEAN',
        :'expired_days' => :'Integer',
        :'limit' => :'Integer',
        :'expire_when_zero' => :'BOOLEAN',
        :'charge_to_firm' => :'BOOLEAN',
        :'employee_comp_rate' => :'String',
        :'employee_comp_not_exceed' => :'String',
        :'comp_hourly_rate' => :'Float',
        :'comp_limit_amount' => :'Float',
        :'bill_cycle_id' => :'Integer',
        :'bill_one_time_flag' => :'BOOLEAN',
        :'bill_terms_id' => :'Integer',
        :'invoicing_cycle' => :'String',
        :'bill_to_company' => :'CompanyReference',
        :'bill_to_site' => :'SiteReference',
        :'bill_amount' => :'Float',
        :'taxable' => :'BOOLEAN',
        :'prorate_first_bill' => :'Float',
        :'bill_start_date' => :'DateTime',
        :'tax_code_id' => :'Integer',
        :'restrict_down_payment' => :'BOOLEAN',
        :'prorate_flag' => :'BOOLEAN',
        :'invoice_description' => :'String',
        :'top_comment' => :'BOOLEAN',
        :'bottom_comment' => :'BOOLEAN',
        :'work_role' => :'WorkRoleReference',
        :'work_type' => :'WorkTypeReference',
        :'project_type_id' => :'Integer',
        :'invoice_template_setup_id' => :'Integer',
        :'bill_time' => :'String',
        :'bill_expenses' => :'String',
        :'bill_products' => :'String',
        :'billable_time_invoice' => :'BOOLEAN',
        :'billable_expense_invoice' => :'BOOLEAN',
        :'billable_product_invoice' => :'BOOLEAN',
        :'currency' => :'CurrencyReference',
        :'period_type' => :'String',
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.has_key?(:'subContractCompany')
        self.sub_contract_company = attributes[:'subContractCompany']
      end

      if attributes.has_key?(:'subContractContact')
        self.sub_contract_contact = attributes[:'subContractContact']
      end

      if attributes.has_key?(:'parentAgreementId')
        self.parent_agreement_id = attributes[:'parentAgreementId']
      end

      if attributes.has_key?(:'customerPO')
        self.customer_po = attributes[:'customerPO']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'businessUnitId')
        self.business_unit_id = attributes[:'businessUnitId']
      end

      if attributes.has_key?(:'restrictLocationFlag')
        self.restrict_location_flag = attributes[:'restrictLocationFlag']
      end

      if attributes.has_key?(:'restrictDepartmentFlag')
        self.restrict_department_flag = attributes[:'restrictDepartmentFlag']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'endDate')
        self.end_date = attributes[:'endDate']
      end

      if attributes.has_key?(:'noEndingDateFlag')
        self.no_ending_date_flag = attributes[:'noEndingDateFlag']
      end

      if attributes.has_key?(:'opportunity')
        self.opportunity = attributes[:'opportunity']
      end

      if attributes.has_key?(:'cancelledFlag')
        self.cancelled_flag = attributes[:'cancelledFlag']
      end

      if attributes.has_key?(:'dateCancelled')
        self.date_cancelled = attributes[:'dateCancelled']
      end

      if attributes.has_key?(:'reasonCancelled')
        self.reason_cancelled = attributes[:'reasonCancelled']
      end

      if attributes.has_key?(:'slaId')
        self.sla_id = attributes[:'slaId']
      end

      if attributes.has_key?(:'workOrder')
        self.work_order = attributes[:'workOrder']
      end

      if attributes.has_key?(:'internalNotes')
        self.internal_notes = attributes[:'internalNotes']
      end

      if attributes.has_key?(:'applicationUnits')
        self.application_units = attributes[:'applicationUnits']
      end

      if attributes.has_key?(:'applicationLimit')
        self.application_limit = attributes[:'applicationLimit']
      end

      if attributes.has_key?(:'applicationCycle')
        self.application_cycle = attributes[:'applicationCycle']
      end

      if attributes.has_key?(:'applicationUnlimitedFlag')
        self.application_unlimited_flag = attributes[:'applicationUnlimitedFlag']
      end

      if attributes.has_key?(:'oneTimeFlag')
        self.one_time_flag = attributes[:'oneTimeFlag']
      end

      if attributes.has_key?(:'coverAgreementTime')
        self.cover_agreement_time = attributes[:'coverAgreementTime']
      end

      if attributes.has_key?(:'coverAgreementProduct')
        self.cover_agreement_product = attributes[:'coverAgreementProduct']
      end

      if attributes.has_key?(:'coverAgreementExpense')
        self.cover_agreement_expense = attributes[:'coverAgreementExpense']
      end

      if attributes.has_key?(:'coverSalesTax')
        self.cover_sales_tax = attributes[:'coverSalesTax']
      end

      if attributes.has_key?(:'carryOverUnused')
        self.carry_over_unused = attributes[:'carryOverUnused']
      end

      if attributes.has_key?(:'allowOverruns')
        self.allow_overruns = attributes[:'allowOverruns']
      end

      if attributes.has_key?(:'expiredDays')
        self.expired_days = attributes[:'expiredDays']
      end

      if attributes.has_key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.has_key?(:'expireWhenZero')
        self.expire_when_zero = attributes[:'expireWhenZero']
      end

      if attributes.has_key?(:'chargeToFirm')
        self.charge_to_firm = attributes[:'chargeToFirm']
      end

      if attributes.has_key?(:'employeeCompRate')
        self.employee_comp_rate = attributes[:'employeeCompRate']
      end

      if attributes.has_key?(:'employeeCompNotExceed')
        self.employee_comp_not_exceed = attributes[:'employeeCompNotExceed']
      end

      if attributes.has_key?(:'compHourlyRate')
        self.comp_hourly_rate = attributes[:'compHourlyRate']
      end

      if attributes.has_key?(:'compLimitAmount')
        self.comp_limit_amount = attributes[:'compLimitAmount']
      end

      if attributes.has_key?(:'billCycleId')
        self.bill_cycle_id = attributes[:'billCycleId']
      end

      if attributes.has_key?(:'billOneTimeFlag')
        self.bill_one_time_flag = attributes[:'billOneTimeFlag']
      end

      if attributes.has_key?(:'billTermsId')
        self.bill_terms_id = attributes[:'billTermsId']
      end

      if attributes.has_key?(:'invoicingCycle')
        self.invoicing_cycle = attributes[:'invoicingCycle']
      end

      if attributes.has_key?(:'billToCompany')
        self.bill_to_company = attributes[:'billToCompany']
      end

      if attributes.has_key?(:'billToSite')
        self.bill_to_site = attributes[:'billToSite']
      end

      if attributes.has_key?(:'billAmount')
        self.bill_amount = attributes[:'billAmount']
      end

      if attributes.has_key?(:'taxable')
        self.taxable = attributes[:'taxable']
      end

      if attributes.has_key?(:'prorateFirstBill')
        self.prorate_first_bill = attributes[:'prorateFirstBill']
      end

      if attributes.has_key?(:'billStartDate')
        self.bill_start_date = attributes[:'billStartDate']
      end

      if attributes.has_key?(:'taxCodeId')
        self.tax_code_id = attributes[:'taxCodeId']
      end

      if attributes.has_key?(:'restrictDownPayment')
        self.restrict_down_payment = attributes[:'restrictDownPayment']
      end

      if attributes.has_key?(:'prorateFlag')
        self.prorate_flag = attributes[:'prorateFlag']
      end

      if attributes.has_key?(:'invoiceDescription')
        self.invoice_description = attributes[:'invoiceDescription']
      end

      if attributes.has_key?(:'topComment')
        self.top_comment = attributes[:'topComment']
      end

      if attributes.has_key?(:'bottomComment')
        self.bottom_comment = attributes[:'bottomComment']
      end

      if attributes.has_key?(:'workRole')
        self.work_role = attributes[:'workRole']
      end

      if attributes.has_key?(:'workType')
        self.work_type = attributes[:'workType']
      end

      if attributes.has_key?(:'projectTypeId')
        self.project_type_id = attributes[:'projectTypeId']
      end

      if attributes.has_key?(:'invoiceTemplateSetupId')
        self.invoice_template_setup_id = attributes[:'invoiceTemplateSetupId']
      end

      if attributes.has_key?(:'billTime')
        self.bill_time = attributes[:'billTime']
      end

      if attributes.has_key?(:'billExpenses')
        self.bill_expenses = attributes[:'billExpenses']
      end

      if attributes.has_key?(:'billProducts')
        self.bill_products = attributes[:'billProducts']
      end

      if attributes.has_key?(:'billableTimeInvoice')
        self.billable_time_invoice = attributes[:'billableTimeInvoice']
      end

      if attributes.has_key?(:'billableExpenseInvoice')
        self.billable_expense_invoice = attributes[:'billableExpenseInvoice']
      end

      if attributes.has_key?(:'billableProductInvoice')
        self.billable_product_invoice = attributes[:'billableProductInvoice']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'periodType')
        self.period_type = attributes[:'periodType']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 100
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 100.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @company.nil?
        invalid_properties.push("invalid value for 'company', company cannot be nil.")
      end

      if @contact.nil?
        invalid_properties.push("invalid value for 'contact', contact cannot be nil.")
      end

      if !@customer_po.nil? && @customer_po.to_s.length > 50
        invalid_properties.push("invalid value for 'customer_po', the character length must be smaller than or equal to 50.")
      end

      if !@reason_cancelled.nil? && @reason_cancelled.to_s.length > 500
        invalid_properties.push("invalid value for 'reason_cancelled', the character length must be smaller than or equal to 50.")
      end

      if !@work_order.nil? && @work_order.to_s.length > 20
        invalid_properties.push("invalid value for 'work_order', the character length must be smaller than or equal to 20.")
      end

      if !@internal_notes.nil? && @internal_notes.to_s.length > 5000
        invalid_properties.push("invalid value for 'internal_notes', the character length must be smaller than or equal to 5000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 100
      return false if @type.nil?
      return false if @company.nil?
      return false if @contact.nil?
      return false if !@customer_po.nil? && @customer_po.to_s.length > 50
      return false if !@reason_cancelled.nil? && @reason_cancelled.to_s.length > 500
      return false if !@work_order.nil? && @work_order.to_s.length > 20
      return false if !@internal_notes.nil? && @internal_notes.to_s.length > 5000
      application_units_validator = EnumAttributeValidator.new('String', ["Amount", "Hours", "Incidents"])
      return false unless application_units_validator.valid?(@application_units)
      application_cycle_validator = EnumAttributeValidator.new('String', ["Contract2Weeks", "Contract4Weeks", "ContractYear", "CalendarMonth", "CalendarQuarter", "CalendarWeek", "ContractQuarter", "CalendarYear", "OneTimeOnly"])
      return false unless application_cycle_validator.valid?(@application_cycle)
      employee_comp_rate_validator = EnumAttributeValidator.new('String', ["Actual", "Hourly"])
      return false unless employee_comp_rate_validator.valid?(@employee_comp_rate)
      employee_comp_not_exceed_validator = EnumAttributeValidator.new('String', ["Billing", "Percent", "Amount"])
      return false unless employee_comp_not_exceed_validator.valid?(@employee_comp_not_exceed)
      invoicing_cycle_validator = EnumAttributeValidator.new('String', ["CalendarYear", "ContractYear"])
      return false unless invoicing_cycle_validator.valid?(@invoicing_cycle)
      bill_time_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_time_validator.valid?(@bill_time)
      bill_expenses_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_expenses_validator.valid?(@bill_expenses)
      bill_products_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_products_validator.valid?(@bill_products)
      period_type_validator = EnumAttributeValidator.new('String', ["Current", "Future", "Both", "Undefined"])
      return false unless period_type_validator.valid?(@period_type)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 100
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 100."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_po Value to be assigned
    def customer_po=(customer_po)

      if !customer_po.nil? && customer_po.to_s.length > 50
        fail ArgumentError, "invalid value for 'customer_po', the character length must be smaller than or equal to 50."
      end

      @customer_po = customer_po
    end

    # Custom attribute writer method with validation
    # @param [Object] reason_cancelled Value to be assigned
    def reason_cancelled=(reason_cancelled)

      if !reason_cancelled.nil? && reason_cancelled.to_s.length > 500
        fail ArgumentError, "invalid value for 'reason_cancelled', the character length must be smaller than or equal to 50."
      end

      @reason_cancelled = reason_cancelled
    end

    # Custom attribute writer method with validation
    # @param [Object] work_order Value to be assigned
    def work_order=(work_order)

      if !work_order.nil? && work_order.to_s.length > 20
        fail ArgumentError, "invalid value for 'work_order', the character length must be smaller than or equal to 20."
      end

      @work_order = work_order
    end

    # Custom attribute writer method with validation
    # @param [Object] internal_notes Value to be assigned
    def internal_notes=(internal_notes)

      if !internal_notes.nil? && internal_notes.to_s.length > 5000
        fail ArgumentError, "invalid value for 'internal_notes', the character length must be smaller than or equal to 5000."
      end

      @internal_notes = internal_notes
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_units Object to be assigned
    def application_units=(application_units)
      validator = EnumAttributeValidator.new('String', ["Amount", "Hours", "Incidents"])
      unless validator.valid?(application_units)
        fail ArgumentError, "invalid value for 'application_units', must be one of #{validator.allowable_values}."
      end
      @application_units = application_units
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_cycle Object to be assigned
    def application_cycle=(application_cycle)
      validator = EnumAttributeValidator.new('String', ["Contract2Weeks", "Contract4Weeks", "ContractYear", "CalendarMonth", "CalendarQuarter", "CalendarWeek", "ContractQuarter", "CalendarYear", "OneTimeOnly"])
      unless validator.valid?(application_cycle)
        fail ArgumentError, "invalid value for 'application_cycle', must be one of #{validator.allowable_values}."
      end
      @application_cycle = application_cycle
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] employee_comp_rate Object to be assigned
    def employee_comp_rate=(employee_comp_rate)
      validator = EnumAttributeValidator.new('String', ["Actual", "Hourly"])
      unless validator.valid?(employee_comp_rate)
        fail ArgumentError, "invalid value for 'employee_comp_rate', must be one of #{validator.allowable_values}."
      end
      @employee_comp_rate = employee_comp_rate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] employee_comp_not_exceed Object to be assigned
    def employee_comp_not_exceed=(employee_comp_not_exceed)
      validator = EnumAttributeValidator.new('String', ["Billing", "Percent", "Amount"])
      unless validator.valid?(employee_comp_not_exceed)
        fail ArgumentError, "invalid value for 'employee_comp_not_exceed', must be one of #{validator.allowable_values}."
      end
      @employee_comp_not_exceed = employee_comp_not_exceed
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoicing_cycle Object to be assigned
    def invoicing_cycle=(invoicing_cycle)
      validator = EnumAttributeValidator.new('String', ["CalendarYear", "ContractYear"])
      unless validator.valid?(invoicing_cycle)
        fail ArgumentError, "invalid value for 'invoicing_cycle', must be one of #{validator.allowable_values}."
      end
      @invoicing_cycle = invoicing_cycle
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_time Object to be assigned
    def bill_time=(bill_time)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_time)
        fail ArgumentError, "invalid value for 'bill_time', must be one of #{validator.allowable_values}."
      end
      @bill_time = bill_time
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_expenses Object to be assigned
    def bill_expenses=(bill_expenses)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_expenses)
        fail ArgumentError, "invalid value for 'bill_expenses', must be one of #{validator.allowable_values}."
      end
      @bill_expenses = bill_expenses
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_products Object to be assigned
    def bill_products=(bill_products)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_products)
        fail ArgumentError, "invalid value for 'bill_products', must be one of #{validator.allowable_values}."
      end
      @bill_products = bill_products
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] period_type Object to be assigned
    def period_type=(period_type)
      validator = EnumAttributeValidator.new('String', ["Current", "Future", "Both", "Undefined"])
      unless validator.valid?(period_type)
        fail ArgumentError, "invalid value for 'period_type', must be one of #{validator.allowable_values}."
      end
      @period_type = period_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          type == o.type &&
          company == o.company &&
          contact == o.contact &&
          sub_contract_company == o.sub_contract_company &&
          sub_contract_contact == o.sub_contract_contact &&
          parent_agreement_id == o.parent_agreement_id &&
          customer_po == o.customer_po &&
          location_id == o.location_id &&
          business_unit_id == o.business_unit_id &&
          restrict_location_flag == o.restrict_location_flag &&
          restrict_department_flag == o.restrict_department_flag &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          no_ending_date_flag == o.no_ending_date_flag &&
          opportunity == o.opportunity &&
          cancelled_flag == o.cancelled_flag &&
          date_cancelled == o.date_cancelled &&
          reason_cancelled == o.reason_cancelled &&
          sla_id == o.sla_id &&
          work_order == o.work_order &&
          internal_notes == o.internal_notes &&
          application_units == o.application_units &&
          application_limit == o.application_limit &&
          application_cycle == o.application_cycle &&
          application_unlimited_flag == o.application_unlimited_flag &&
          one_time_flag == o.one_time_flag &&
          cover_agreement_time == o.cover_agreement_time &&
          cover_agreement_product == o.cover_agreement_product &&
          cover_agreement_expense == o.cover_agreement_expense &&
          cover_sales_tax == o.cover_sales_tax &&
          carry_over_unused == o.carry_over_unused &&
          allow_overruns == o.allow_overruns &&
          expired_days == o.expired_days &&
          limit == o.limit &&
          expire_when_zero == o.expire_when_zero &&
          charge_to_firm == o.charge_to_firm &&
          employee_comp_rate == o.employee_comp_rate &&
          employee_comp_not_exceed == o.employee_comp_not_exceed &&
          comp_hourly_rate == o.comp_hourly_rate &&
          comp_limit_amount == o.comp_limit_amount &&
          bill_cycle_id == o.bill_cycle_id &&
          bill_one_time_flag == o.bill_one_time_flag &&
          bill_terms_id == o.bill_terms_id &&
          invoicing_cycle == o.invoicing_cycle &&
          bill_to_company == o.bill_to_company &&
          bill_to_site == o.bill_to_site &&
          bill_amount == o.bill_amount &&
          taxable == o.taxable &&
          prorate_first_bill == o.prorate_first_bill &&
          bill_start_date == o.bill_start_date &&
          tax_code_id == o.tax_code_id &&
          restrict_down_payment == o.restrict_down_payment &&
          prorate_flag == o.prorate_flag &&
          invoice_description == o.invoice_description &&
          top_comment == o.top_comment &&
          bottom_comment == o.bottom_comment &&
          work_role == o.work_role &&
          work_type == o.work_type &&
          project_type_id == o.project_type_id &&
          invoice_template_setup_id == o.invoice_template_setup_id &&
          bill_time == o.bill_time &&
          bill_expenses == o.bill_expenses &&
          bill_products == o.bill_products &&
          billable_time_invoice == o.billable_time_invoice &&
          billable_expense_invoice == o.billable_expense_invoice &&
          billable_product_invoice == o.billable_product_invoice &&
          currency == o.currency &&
          period_type == o.period_type &&
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
      [id, name, type, company, contact, sub_contract_company, sub_contract_contact, parent_agreement_id, customer_po, location_id, business_unit_id, restrict_location_flag, restrict_department_flag, start_date, end_date, no_ending_date_flag, opportunity, cancelled_flag, date_cancelled, reason_cancelled, sla_id, work_order, internal_notes, application_units, application_limit, application_cycle, application_unlimited_flag, one_time_flag, cover_agreement_time, cover_agreement_product, cover_agreement_expense, cover_sales_tax, carry_over_unused, allow_overruns, expired_days, limit, expire_when_zero, charge_to_firm, employee_comp_rate, employee_comp_not_exceed, comp_hourly_rate, comp_limit_amount, bill_cycle_id, bill_one_time_flag, bill_terms_id, invoicing_cycle, bill_to_company, bill_to_site, bill_amount, taxable, prorate_first_bill, bill_start_date, tax_code_id, restrict_down_payment, prorate_flag, invoice_description, top_comment, bottom_comment, work_role, work_type, project_type_id, invoice_template_setup_id, bill_time, bill_expenses, bill_products, billable_time_invoice, billable_expense_invoice, billable_product_invoice, currency, period_type, _info].hash
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
