# Main module of this SDK. All non-data classes that are used at multiple places in the SDK are placed in this module.
module Ingenico::Connect::SDK
end

# Contains provided implementations for abstract functionality in this SDK.
# These implementations can be replaced or adapted if desired to suit specific needs.
module Ingenico::Connect::SDK::DefaultImpl
end

# Contains all logging-related classes.
module Ingenico::Connect::SDK::Logging
end

# Contains interfaces to all GlobalCollect services. These services are accessed through a *Ingenico::Connect::SDK::Client* instance.
module Ingenico::Connect::SDK::Merchant
end

# Container for all data-containing modules.
# The data-classes contained within can be serialized and communicated with the GlobalCollect platform.
# These classes generally contain financially relevant data used in processing requests or responses.
module Ingenico::Connect::SDK::Domain
end

# Contains the client used to access the HostedCheckouts service.
# @see https://developer.globalcollect.com/documentation/api/server/#hostedcheckouts
module Ingenico::Connect::SDK::Merchant::Hostedcheckouts
end

# Contains data classes that are used in the HostedCheckouts service.
# @see https://developer.globalcollect.com/documentation/api/server/#hostedcheckouts
module Ingenico::Connect::SDK::Domain::Hostedcheckout
end

# Contains the client used to access the payment service.
# @see https://developer.globalcollect.com/documentation/api/server/#payments
module Ingenico::Connect::SDK::Merchant::Payments
end

# Contains data classes that are used in payment services.
# @see https://developer.globalcollect.com/documentation/api/server/#payments
module Ingenico::Connect::SDK::Domain::Payment
end

# Contains the client used to access the capture service.
# @see https://developer.globalcollect.com/documentation/api/server/#captures
module Ingenico::Connect::SDK::Merchant::Captures
end

# Contains data classes that are used in capture services.
# @see https://developer.globalcollect.com/documentation/api/server/#captures
module Ingenico::Connect::SDK::Domain::Capture
end

# Contains the client used to access the payout service.
# @see https://developer.globalcollect.com/documentation/api/server/#payouts
module Ingenico::Connect::SDK::Merchant::Payouts
end

# Contains data classes that are used in payout services.
# @see https://developer.globalcollect.com/documentation/api/server/#payouts
module Ingenico::Connect::SDK::Domain::Payout
end

# Contains the client used to access the product groups service.
# @see https://developer.globalcollect.com/documentation/api/server/#productgroups
module Ingenico::Connect::SDK::Merchant::Productgroups
end

# Contains the client used to access the products service.
# @see https://developer.globalcollect.com/documentation/api/server/#products
module Ingenico::Connect::SDK::Merchant::Products
end

# Contains data classes that are used in payment product and payment product group services.
# @see https://developer.globalcollect.com/documentation/api/server/#products
module Ingenico::Connect::SDK::Domain::Product
end

# Contains the client used to access the refunds service
# @see https://developer.globalcollect.com/documentation/api/server/#refunds
module Ingenico::Connect::SDK::Merchant::Refunds
end

# Contains data classes that are used in refund requests.
# @see https://developer.globalcollect.com/documentation/api/server/#refunds
module Ingenico::Connect::SDK::Domain::Refund
end

# Contains the client used to access the riskassessments service.
# @see https://developer.globalcollect.com/documentation/api/server/#riskassessments
module Ingenico::Connect::SDK::Merchant::Riskassessments
end

# Contains data classes that are used in riskassessment services.
# @see https://developer.globalcollect.com/documentation/api/server/#riskassessments
module Ingenico::Connect::SDK::Domain::Riskassessments
end

# Contains the client to access miscellaneous services.
# @see https://developer.globalcollect.com/documentation/api/server/#services
module Ingenico::Connect::SDK::Merchant::Services
end

# Contains data classes that are used in miscellaneous services.
# @see https://developer.globalcollect.com/documentation/api/server/#services
module Ingenico::Connect::SDK::Domain::Services
end

# Contains the client used to access the sessions service.
# @see https://developer.globalcollect.com/documentation/api/server/#sessions
module Ingenico::Connect::SDK::Merchant::Sessions
end

# Contains data classes that are used in initiating Sessions.
# @see https://developer.globalcollect.com/documentation/api/server/#sessions
module Ingenico::Connect::SDK::Domain::Sessions
end

# Contains the client used to access the tokens service.
# @see https://developer.globalcollect.com/documentation/api/server/#tokens
module Ingenico::Connect::SDK::Merchant::Tokens
end

# Contains data classes that are used in the tokenization service.
# @see https://developer.globalcollect.com/documentation/api/server/#tokens
module Ingenico::Connect::SDK::Domain::Token
end

# Contains data classes that are used for cryptography services.
module Ingenico::Connect::SDK::Domain::Publickey
end

# Contains the general data classes that are used in multiple different types of requests.
# These classes can be serialized and used in communication with the GlobalCollect platform.
module Ingenico::Connect::SDK::Domain::Definitions
end

# Contains classes that represent error responses from the GlobalCollect platform.
module Ingenico::Connect::SDK::Domain::Errors
end

# Contains data classes related to shopping cart functionality.
module Ingenico::Connect::SDK::Domain::MetaData
end
