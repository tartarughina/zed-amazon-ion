// Sample Ion Schema document
schema_header::{
  imports: [
    { id: "isl/ion.isl", type: ion }
  ]
}

// Define a custom email type
type::{
  name: email,
  type: string,
  regex: "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
}

// Define a user type with constraints
type::{
  name: user,
  type: struct,
  fields: {
    id: { type: int, valid_values: range::[1, max] },
    email: email,
    name: { type: string, codepoint_length: range::[1, 100] },
    age: { type: int, valid_values: range::[0, 150] },
    active: bool,
    tags: {
      type: list,
      element: string,
      container_length: range::[0, 10]
    },
    metadata: {
      type: struct,
      fields: {
        source: { type: symbol, valid_values: ['web', 'mobile', 'api'] },
        score: { type: decimal, precision: 3, scale: 2 },
        created: timestamp
      }
    }
  }
}

// Define an address type
type::{
  name: address,
  type: struct,
  fields: {
    street: string,
    city: string,
    state: { type: string, codepoint_length: 2 },
    zip: { type: string, regex: "^[0-9]{5}(-[0-9]{4})?$" },
    country: { type: string, valid_values: ["US", "CA", "MX"] }
  }
}

/* Multi-line comment
   describing complex schema rules */
type::{
  name: product,
  type: struct,
  fields: {
    id: { type: string, regex: "^PROD-[0-9]{6}$" },
    name: { type: string, codepoint_length: range::[1, 200] },
    price: { type: decimal, valid_values: range::[0.01, 99999.99] },
    categories: {
      type: list,
      element: string,
      container_length: range::[1, 5]
    },
    attributes: {
      type: struct,
      fields: {
        weight: { type: decimal, annotations: [unit] },
        dimensions: {
          type: struct,
          fields: {
            length: decimal,
            width: decimal,
            height: decimal
          }
        }
      }
    }
  }
}
