// Independent TypeSpec authority A for the test-org peer-authority canary.
// TJSV may compile this to JSON Schema B as comparison evidence only.
import "@typespec/json-schema";
using TypeSpec.JsonSchema;

namespace OreSchemaAuthority;

@id("AuthorityKind")
enum AuthorityKind {
  typespec: "typespec",
  jsonSchema: "json-schema",
}

@id("PeerAuthorityRegistration")
model PeerAuthorityRegistration {
  repository: string;
  authority: AuthorityKind;
  generatedWitnessOnly: boolean;
  owner?: string;
}
