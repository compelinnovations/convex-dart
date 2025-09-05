import { Id } from "./_generated/dataModel";
import { query, mutation } from "./_generated/server";
import { v } from "convex/values";

// Primitive types
export const query1 = query({
  args: {
    i: v.string(),
  },
  returns: {
    i: v.string(),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query2 = query({
  args: {
    i: v.number(),
  },
  returns: {
    i: v.number(),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query3 = query({
  args: {
    i: v.boolean(),
  },
  returns: {
    i: v.boolean(),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query4 = query({
  args: {
    i: v.int64(),
  },
  returns: {
    i: v.int64(),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query5 = query({
  args: {
    i: v.bytes(),
  },
  returns: {
    i: v.bytes(),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query6 = query({
  args: {
    i: v.id("tasks"),
  },
  returns: {
    i: v.id("tasks"),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query7 = query({
  args: {
    i: v.any(),
  },
  returns: {
    i: v.any(),
  },
  handler: (ctx, args) => {
    return args;
  },
});
// Invalid
// export const query8 = query({
//   args: {
//     i: v.null(),
//   },
//   returns: {
//     i: v.null(),
//   },
//   handler: (ctx, args) => {
//     return args;
//   },
// });

export const query9 = query({
  args: {
    i: v.literal("hi"),
  },
  returns: {
    i: v.literal("hi"),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query10 = query({
  args: {
    i: v.literal(1.0),
  },
  returns: {
    i: v.literal(1.0),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query11 = query({
  args: {
    i: v.literal(true),
  },
  returns: {
    i: v.literal(true),
  },
  handler: (ctx, args) => {
    return args;
  },
});

// Optional Primitive types
export const query13 = query({
  args: {
    i: v.optional(v.string()),
  },
  returns: {
    i: v.optional(v.string()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query14 = query({
  args: {
    i: v.optional(v.number()),
  },
  returns: {
    i: v.optional(v.number()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query15 = query({
  args: {
    i: v.optional(v.boolean()),
  },
  returns: {
    i: v.optional(v.boolean()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query16 = query({
  args: {
    i: v.optional(v.int64()),
  },
  returns: {
    i: v.optional(v.int64()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query17 = query({
  args: {
    i: v.optional(v.bytes()),
  },
  returns: {
    i: v.optional(v.bytes()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query18 = query({
  args: {
    i: v.optional(v.id("tasks")),
  },
  returns: {
    i: v.optional(v.id("tasks")),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query19 = query({
  args: {
    i: v.optional(v.any()),
  },
  returns: {
    i: v.optional(v.any()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query20 = query({
  args: {
    i: v.optional(v.literal("hi")),
  },
  returns: {
    i: v.optional(v.literal("hi")),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query21 = query({
  args: {
    i: v.optional(v.literal(1)),
  },
  returns: {
    i: v.optional(v.literal(1)),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query22 = query({
  args: {
    i: v.optional(v.literal(true)),
  },
  returns: {
    i: v.optional(v.literal(true)),
  },
  handler: (ctx, args) => {
    return args;
  },
});

// export const query23 = query({
//   args: {
//     i: v.optional(v.literal(BigInt(1))),
//   },
//   returns: {
//     i: v.optional(v.literal(BigInt(1))),
//   },
//   handler: (ctx, args) => {
//     return args;
//   },
// });

// Nullable Primitive types
export const query24 = query({
  args: {
    i: v.union(v.string(), v.null()),
  },
  returns: {
    i: v.union(v.string(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query25 = query({
  args: {
    i: v.union(v.number(), v.null()),
  },
  returns: {
    i: v.union(v.number(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query26 = query({
  args: {
    i: v.union(v.boolean(), v.null()),
  },
  returns: {
    i: v.union(v.boolean(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query27 = query({
  args: {
    i: v.union(v.int64(), v.null()),
  },
  returns: {
    i: v.union(v.int64(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query28 = query({
  args: {
    i: v.union(v.bytes(), v.null()),
  },
  returns: {
    i: v.union(v.bytes(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query29 = query({
  args: {
    i: v.union(v.id("tasks"), v.null()),
  },
  returns: {
    i: v.union(v.id("tasks"), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query30 = query({
  args: {
    i: v.union(v.any(), v.null()),
  },
  returns: {
    i: v.union(v.any(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query31 = query({
  args: {
    i: v.union(v.literal("hi"), v.null()),
  },
  returns: {
    i: v.union(v.literal("hi"), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query32 = query({
  args: {
    i: v.union(v.literal(1), v.null()),
  },
  returns: {
    i: v.union(v.literal(1), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query33 = query({
  args: {
    i: v.union(v.literal(true), v.null()),
  },
  returns: {
    i: v.union(v.literal(true), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

// export const query34 = query({
//   args: {
//     i: v.union(v.literal(BigInt(1)), v.null()),
//   },
//   returns: {
//     i: v.union(v.literal(BigInt(1)), v.null()),
//   },
//   handler: (ctx, args) => {
//     return args;
//   },
// });

// Array Primitive types
export const query35 = query({
  args: {
    i: v.array(v.string()),
  },
  returns: {
    i: v.array(v.string()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query36 = query({
  args: {
    i: v.array(v.number()),
  },
  returns: {
    i: v.array(v.number()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query37 = query({
  args: {
    i: v.array(v.boolean()),
  },
  returns: {
    i: v.array(v.boolean()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query38 = query({
  args: {
    i: v.array(v.int64()),
  },
  returns: {
    i: v.array(v.int64()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query39 = query({
  args: {
    i: v.array(v.bytes()),
  },
  returns: {
    i: v.array(v.bytes()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query40 = query({
  args: {
    i: v.array(v.id("tasks")),
  },
  returns: {
    i: v.array(v.id("tasks")),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query41 = query({
  args: {
    i: v.array(v.any()),
  },
  returns: {
    i: v.array(v.any()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query42 = query({
  args: {
    i: v.array(v.null()),
  },
  returns: {
    i: v.array(v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query43 = query({
  args: {
    i: v.array(v.literal("hi")),
  },
  returns: {
    i: v.array(v.literal("hi")),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query44 = query({
  args: {
    i: v.array(v.literal(1)),
  },
  returns: {
    i: v.array(v.literal(1)),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query45 = query({
  args: {
    i: v.array(v.literal(true)),
  },
  returns: {
    i: v.array(v.literal(true)),
  },
  handler: (ctx, args) => {
    return args;
  },
});

// export const query46 = query({
//   args: {
//     i: v.array(v.literal(BigInt(1))),
//   },
//   returns: {
//     i: v.array(v.literal(BigInt(1))),
//   },
//   handler: (ctx, args) => {
//     return args;
//   },
// });

// Array Nullable Primitive types
export const query58 = query({
  args: {
    i: v.array(v.union(v.string(), v.null())),
  },
  returns: {
    i: v.array(v.union(v.string(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query59 = query({
  args: {
    i: v.array(v.union(v.number(), v.null())),
  },
  returns: {
    i: v.array(v.union(v.number(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query60 = query({
  args: {
    i: v.array(v.union(v.boolean(), v.null())),
  },
  returns: {
    i: v.array(v.union(v.boolean(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query61 = query({
  args: {
    i: v.array(v.union(v.int64(), v.null())),
  },
  returns: {
    i: v.array(v.union(v.int64(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query62 = query({
  args: {
    i: v.array(v.union(v.bytes(), v.null())),
  },
  returns: {
    i: v.array(v.union(v.bytes(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query63 = query({
  args: {
    i: v.array(v.union(v.id("tasks"), v.null())),
  },
  returns: {
    i: v.array(v.union(v.id("tasks"), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query64 = query({
  args: {
    i: v.array(v.union(v.any(), v.null())),
  },
  returns: {
    i: v.array(v.union(v.any(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query65 = query({
  args: {
    i: v.array(v.union(v.literal("hi"), v.null())),
  },
  returns: {
    i: v.array(v.union(v.literal("hi"), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query66 = query({
  args: {
    i: v.array(v.union(v.literal(1), v.null())),
  },
  returns: {
    i: v.array(v.union(v.literal(1), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query67 = query({
  args: {
    i: v.array(v.union(v.literal(true), v.null())),
  },
  returns: {
    i: v.array(v.union(v.literal(true), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

// export const query68 = query({
//   args: {
//     i: v.array(v.union(v.literal(BigInt(1)), v.null())),
//   },
//   returns: {
//     i: v.array(v.union(v.literal(BigInt(1)), v.null())),
//   },
//   handler: (ctx, args) => {
//     return args;
//   },
// });

// Record Primitive types
export const query69 = query({
  args: {
    i: v.record(v.string(), v.string()),
  },
  returns: {
    i: v.record(v.string(), v.string()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query70 = query({
  args: {
    i: v.record(v.string(), v.number()),
  },
  returns: {
    i: v.record(v.string(), v.number()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query71 = query({
  args: {
    i: v.record(v.string(), v.boolean()),
  },
  returns: {
    i: v.record(v.string(), v.boolean()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query72 = query({
  args: {
    i: v.record(v.string(), v.int64()),
  },
  returns: {
    i: v.record(v.string(), v.int64()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query73 = query({
  args: {
    i: v.record(v.string(), v.bytes()),
  },
  returns: {
    i: v.record(v.string(), v.bytes()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query74 = query({
  args: {
    i: v.record(v.string(), v.id("tasks")),
  },
  returns: {
    i: v.record(v.string(), v.id("tasks")),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query75 = query({
  args: {
    i: v.record(v.string(), v.any()),
  },
  returns: {
    i: v.record(v.string(), v.any()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query76 = query({
  args: {
    i: v.record(v.string(), v.null()),
  },
  returns: {
    i: v.record(v.string(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query77 = query({
  args: {
    i: v.record(v.string(), v.literal("hi")),
  },
  returns: {
    i: v.record(v.string(), v.literal("hi")),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query78 = query({
  args: {
    i: v.record(v.string(), v.literal(1)),
  },
  returns: {
    i: v.record(v.string(), v.literal(1)),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query79 = query({
  args: {
    i: v.record(v.string(), v.literal(true)),
  },
  returns: {
    i: v.record(v.string(), v.literal(true)),
  },
  handler: (ctx, args) => {
    return args;
  },
});

// export const query80 = query({
//   args: {
//     i: v.record(v.string(), v.literal(BigInt(1))),
//   },
//   returns: {
//     i: v.record(v.string(), v.literal(BigInt(1))),
//   },
//   handler: (ctx, args) => {
//     return args;
//   },
// });

// Record Nullable Primitive types
export const query81 = query({
  args: {
    i: v.record(v.string(), v.union(v.string(), v.null())),
  },
  returns: {
    i: v.record(v.string(), v.union(v.string(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query82 = query({
  args: {
    i: v.record(v.string(), v.union(v.number(), v.null())),
  },
  returns: {
    i: v.record(v.string(), v.union(v.number(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query83 = query({
  args: {
    i: v.record(v.string(), v.union(v.boolean(), v.null())),
  },
  returns: {
    i: v.record(v.string(), v.union(v.boolean(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query84 = query({
  args: {
    i: v.record(v.string(), v.union(v.int64(), v.null())),
  },
  returns: {
    i: v.record(v.string(), v.union(v.int64(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query85 = query({
  args: {
    i: v.record(v.string(), v.union(v.bytes(), v.null())),
  },
  returns: {
    i: v.record(v.string(), v.union(v.bytes(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query86 = query({
  args: {
    i: v.record(v.string(), v.union(v.id("tasks"), v.null())),
  },
  returns: {
    i: v.record(v.string(), v.union(v.id("tasks"), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query87 = query({
  args: {
    i: v.record(v.string(), v.union(v.any(), v.null())),
  },
  returns: {
    i: v.record(v.string(), v.union(v.any(), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query88 = query({
  args: {
    i: v.record(v.string(), v.union(v.literal("hi"), v.null())),
  },
  returns: {
    i: v.record(v.string(), v.union(v.literal("hi"), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query89 = query({
  args: {
    i: v.record(v.string(), v.union(v.literal(1), v.null())),
  },
  returns: {
    i: v.record(v.string(), v.union(v.literal(1), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query90 = query({
  args: {
    i: v.record(v.string(), v.union(v.literal(true), v.null())),
  },
  returns: {
    i: v.record(v.string(), v.union(v.literal(true), v.null())),
  },
  handler: (ctx, args) => {
    return args;
  },
});

// export const query91 = query({
//   args: {
//     i: v.record(v.string(), v.union(v.literal(BigInt(1)), v.null())),
//   },
//   returns: {
//     i: v.record(v.string(), v.union(v.literal(BigInt(1)), v.null())),
//   },
//   handler: (ctx, args) => {
//     return args;
//   },
// });

// Union types - assorted combinations
export const query92 = query({
  args: {
    i: v.union(v.string(), v.number()),
  },
  returns: {
    i: v.union(v.string(), v.number()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query93 = query({
  args: {
    i: v.union(v.boolean(), v.number()),
  },
  returns: {
    i: v.union(v.boolean(), v.number()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query94 = query({
  args: {
    i: v.union(v.string(), v.boolean()),
  },
  returns: {
    i: v.union(v.string(), v.boolean()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

// 3-type unions
export const query95 = query({
  args: {
    i: v.union(v.string(), v.number(), v.boolean()),
  },
  returns: {
    i: v.union(v.string(), v.number(), v.boolean()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query96 = query({
  args: {
    i: v.union(v.string(), v.null()),
  },
  returns: {
    i: v.union(v.string(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query97 = query({
  args: {
    i: v.union(v.number(), v.boolean(), v.null()),
  },
  returns: {
    i: v.union(v.number(), v.boolean(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query98 = query({
  args: {
    i: v.union(v.bytes(), v.string()),
  },
  returns: {
    i: v.union(v.bytes(), v.string()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query99 = query({
  args: {
    i: v.union(v.id("tasks"), v.string()),
  },
  returns: {
    i: v.union(v.id("tasks"), v.string()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query100 = query({
  args: {
    i: v.union(v.literal("yes"), v.literal("no")),
  },
  returns: {
    i: v.union(v.literal("yes"), v.literal("no")),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query101 = query({
  args: {
    i: v.union(v.literal(1), v.literal(2), v.literal(3)),
  },
  returns: {
    i: v.union(v.literal(1), v.literal(2), v.literal(3)),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query102 = query({
  args: {
    i: v.union(v.literal("admin"), v.literal("user"), v.literal("guest")),
  },
  returns: {
    i: v.union(v.literal("admin"), v.literal("user"), v.literal("guest")),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query103 = query({
  args: {
    i: v.union(v.int64(), v.number()),
  },
  returns: {
    i: v.union(v.int64(), v.number()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query104 = query({
  args: {
    i: v.union(v.string(), v.number(), v.boolean(), v.null()),
  },
  returns: {
    i: v.union(v.string(), v.number(), v.boolean(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query105 = query({
  args: {
    i: v.union(v.any(), v.null()),
  },
  returns: {
    i: v.union(v.any(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query106 = query({
  args: {
    i: v.union(v.literal(true), v.literal(false)),
  },
  returns: {
    i: v.union(v.literal(true), v.literal(false)),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query107 = query({
  args: {
    i: v.union(v.bytes(), v.int64(), v.null()),
  },
  returns: {
    i: v.union(v.bytes(), v.int64(), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query108 = query({
  args: {
    i: v.union(v.string(), v.literal("special")),
  },
  returns: {
    i: v.union(v.string(), v.literal("special")),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query109 = query({
  args: {
    i: v.union(v.number(), v.literal(42)),
  },
  returns: {
    i: v.union(v.number(), v.literal(42)),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query110 = query({
  args: {
    i: v.union(v.boolean(), v.literal("mixed"), v.null()),
  },
  returns: {
    i: v.union(v.boolean(), v.literal("mixed"), v.null()),
  },
  handler: (ctx, args) => {
    return args;
  },
});

// Object types - various field combinations
export const query111 = query({
  args: {
    i: v.object({
      name: v.string(),
      age: v.number(),
    }),
  },
  returns: {
    i: v.object({
      name: v.string(),
      age: v.number(),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query112 = query({
  args: {
    i: v.object({
      id: v.id("tasks"),
      title: v.string(),
      completed: v.boolean(),
    }),
  },
  returns: {
    i: v.object({
      id: v.id("tasks"),
      title: v.string(),
      completed: v.boolean(),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query113 = query({
  args: {
    i: v.object({
      user: v.object({
        name: v.string(),
        email: v.string(),
      }),
      settings: v.object({
        theme: v.string(),
        notifications: v.boolean(),
      }),
    }),
  },
  returns: {
    i: v.object({
      user: v.object({
        name: v.string(),
        email: v.string(),
      }),
      settings: v.object({
        theme: v.string(),
        notifications: v.boolean(),
      }),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query114 = query({
  args: {
    i: v.object({
      name: v.optional(v.string()),
      email: v.optional(v.string()),
      phone: v.union(v.string(), v.null()),
    }),
  },
  returns: {
    i: v.object({
      name: v.optional(v.string()),
      email: v.optional(v.string()),
      phone: v.union(v.string(), v.null()),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query115 = query({
  args: {
    i: v.object({
      tags: v.array(v.string()),
      categories: v.array(
        v.union(v.literal("work"), v.literal("personal"), v.literal("urgent"))
      ),
    }),
  },
  returns: {
    i: v.object({
      tags: v.array(v.string()),
      categories: v.array(
        v.union(v.literal("work"), v.literal("personal"), v.literal("urgent"))
      ),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query116 = query({
  args: {
    i: v.object({
      metadata: v.record(v.string(), v.any()),
      data: v.object({
        type: v.union(
          v.literal("text"),
          v.literal("number"),
          v.literal("boolean")
        ),
        value: v.any(),
      }),
    }),
  },
  returns: {
    i: v.object({
      metadata: v.record(v.string(), v.any()),
      data: v.object({
        type: v.union(
          v.literal("text"),
          v.literal("number"),
          v.literal("boolean")
        ),
        value: v.any(),
      }),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query117 = query({
  args: {
    i: v.object({
      status: v.union(
        v.literal("pending"),
        v.literal("approved"),
        v.literal("rejected")
      ),
      reviewer: v.optional(
        v.object({
          id: v.id("tasks"),
          name: v.string(),
        })
      ),
      comments: v.array(
        v.object({
          author: v.string(),
          text: v.string(),
          timestamp: v.number(),
        })
      ),
    }),
  },
  returns: {
    i: v.object({
      status: v.union(
        v.literal("pending"),
        v.literal("approved"),
        v.literal("rejected")
      ),
      reviewer: v.optional(
        v.object({
          id: v.id("tasks"),
          name: v.string(),
        })
      ),
      comments: v.array(
        v.object({
          author: v.string(),
          text: v.string(),
          timestamp: v.number(),
        })
      ),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query118 = query({
  args: {
    i: v.object({
      config: v.record(
        v.string(),
        v.union(v.string(), v.number(), v.boolean())
      ),
      fallback: v.object({
        enabled: v.boolean(),
        value: v.any(),
      }),
    }),
  },
  returns: {
    i: v.object({
      config: v.record(
        v.string(),
        v.union(v.string(), v.number(), v.boolean())
      ),
      fallback: v.object({
        enabled: v.boolean(),
        value: v.any(),
      }),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query119 = query({
  args: {
    i: v.object({
      data: v.union(
        v.object({ type: v.literal("text"), content: v.string() }),
        v.object({ type: v.literal("number"), content: v.number() }),
        v.object({ type: v.literal("boolean"), content: v.boolean() })
      ),
    }),
  },
  returns: {
    i: v.object({
      data: v.union(
        v.object({ type: v.literal("text"), content: v.string() }),
        v.object({ type: v.literal("number"), content: v.number() }),
        v.object({ type: v.literal("boolean"), content: v.boolean() })
      ),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query120 = query({
  args: {
    i: v.object({
      items: v.array(
        v.object({
          id: v.string(),
          name: v.string(),
          quantity: v.optional(v.number()),
          price: v.union(v.number(), v.null()),
          metadata: v.record(v.string(), v.any()),
        })
      ),
      total: v.number(),
    }),
  },
  returns: {
    i: v.object({
      items: v.array(
        v.object({
          id: v.string(),
          name: v.string(),
          quantity: v.optional(v.number()),
          price: v.union(v.number(), v.null()),
          metadata: v.record(v.string(), v.any()),
        })
      ),
      total: v.number(),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});

// Advanced nested and complex types
export const query121 = query({
  args: {
    i: v.array(
      v.object({
        user: v.object({
          profile: v.object({
            name: v.string(),
            avatar: v.optional(v.string()),
          }),
          preferences: v.record(
            v.string(),
            v.union(v.string(), v.number(), v.boolean())
          ),
        }),
        posts: v.array(
          v.object({
            id: v.string(),
            content: v.union(
              v.string(),
              v.object({ text: v.string(), media: v.array(v.string()) })
            ),
            tags: v.array(v.string()),
            likes: v.number(),
          })
        ),
      })
    ),
  },
  returns: {
    i: v.array(
      v.object({
        user: v.object({
          profile: v.object({
            name: v.string(),
            avatar: v.optional(v.string()),
          }),
          preferences: v.record(
            v.string(),
            v.union(v.string(), v.number(), v.boolean())
          ),
        }),
        posts: v.array(
          v.object({
            id: v.string(),
            content: v.union(
              v.string(),
              v.object({ text: v.string(), media: v.array(v.string()) })
            ),
            tags: v.array(v.string()),
            likes: v.number(),
          })
        ),
      })
    ),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query122 = query({
  args: {
    i: v.record(
      v.string(),
      v.object({
        type: v.union(
          v.literal("primitive"),
          v.literal("object"),
          v.literal("array")
        ),
        schema: v.union(
          v.object({
            primitive: v.union(
              v.literal("string"),
              v.literal("number"),
              v.literal("boolean")
            ),
          }),
          v.object({ fields: v.record(v.string(), v.string()) }),
          v.object({ elementType: v.string() })
        ),
        required: v.boolean(),
      })
    ),
  },
  returns: {
    i: v.record(
      v.string(),
      v.object({
        type: v.union(
          v.literal("primitive"),
          v.literal("object"),
          v.literal("array")
        ),
        schema: v.union(
          v.object({
            primitive: v.union(
              v.literal("string"),
              v.literal("number"),
              v.literal("boolean")
            ),
          }),
          v.object({ fields: v.record(v.string(), v.string()) }),
          v.object({ elementType: v.string() })
        ),
        required: v.boolean(),
      })
    ),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query123 = query({
  args: {
    i: v.union(
      v.object({
        type: v.literal("text"),
        content: v.string(),
        formatting: v.optional(
          v.object({
            bold: v.boolean(),
            italic: v.boolean(),
            color: v.union(
              v.literal("red"),
              v.literal("blue"),
              v.literal("green")
            ),
          })
        ),
      }),
      v.object({
        type: v.literal("image"),
        url: v.string(),
        alt: v.optional(v.string()),
        dimensions: v.object({
          width: v.number(),
          height: v.number(),
        }),
      }),
      v.object({
        type: v.literal("list"),
        items: v.array(v.string()),
        ordered: v.boolean(),
      })
    ),
  },
  returns: {
    i: v.union(
      v.object({
        type: v.literal("text"),
        content: v.string(),
        formatting: v.optional(
          v.object({
            bold: v.boolean(),
            italic: v.boolean(),
            color: v.union(
              v.literal("red"),
              v.literal("blue"),
              v.literal("green")
            ),
          })
        ),
      }),
      v.object({
        type: v.literal("image"),
        url: v.string(),
        alt: v.optional(v.string()),
        dimensions: v.object({
          width: v.number(),
          height: v.number(),
        }),
      }),
      v.object({
        type: v.literal("list"),
        items: v.array(v.string()),
        ordered: v.boolean(),
      })
    ),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query124 = query({
  args: {
    i: v.object({
      api: v.object({
        endpoints: v.record(
          v.string(),
          v.object({
            method: v.union(
              v.literal("GET"),
              v.literal("POST"),
              v.literal("PUT"),
              v.literal("DELETE")
            ),
            path: v.string(),
            auth: v.optional(v.boolean()),
            params: v.record(
              v.string(),
              v.union(v.string(), v.number(), v.boolean())
            ),
            response: v.any(),
          })
        ),
        rateLimit: v.object({
          requests: v.number(),
          window: v.union(
            v.literal("minute"),
            v.literal("hour"),
            v.literal("day")
          ),
        }),
      }),
      database: v.object({
        tables: v.record(
          v.string(),
          v.object({
            schema: v.record(
              v.string(),
              v.union(
                v.literal("string"),
                v.literal("number"),
                v.literal("boolean"),
                v.literal("date")
              )
            ),
            indexes: v.array(
              v.object({
                name: v.string(),
                fields: v.array(v.string()),
                unique: v.boolean(),
              })
            ),
          })
        ),
      }),
    }),
  },
  returns: {
    i: v.object({
      api: v.object({
        endpoints: v.record(
          v.string(),
          v.object({
            method: v.union(
              v.literal("GET"),
              v.literal("POST"),
              v.literal("PUT"),
              v.literal("DELETE")
            ),
            path: v.string(),
            auth: v.optional(v.boolean()),
            params: v.record(
              v.string(),
              v.union(v.string(), v.number(), v.boolean())
            ),
            response: v.any(),
          })
        ),
        rateLimit: v.object({
          requests: v.number(),
          window: v.union(
            v.literal("minute"),
            v.literal("hour"),
            v.literal("day")
          ),
        }),
      }),
      database: v.object({
        tables: v.record(
          v.string(),
          v.object({
            schema: v.record(
              v.string(),
              v.union(
                v.literal("string"),
                v.literal("number"),
                v.literal("boolean"),
                v.literal("date")
              )
            ),
            indexes: v.array(
              v.object({
                name: v.string(),
                fields: v.array(v.string()),
                unique: v.boolean(),
              })
            ),
          })
        ),
      }),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});

export const query125 = query({
  args: {
    i: v.object({
      workflow: v.object({
        steps: v.array(
          v.object({
            id: v.string(),
            name: v.string(),
            type: v.union(
              v.literal("action"),
              v.literal("condition"),
              v.literal("loop")
            ),
            config: v.record(v.string(), v.any()),
            next: v.optional(v.string()),
            error: v.optional(
              v.object({
                handler: v.string(),
                retry: v.object({
                  count: v.number(),
                  delay: v.number(),
                }),
              })
            ),
          })
        ),
        variables: v.record(
          v.string(),
          v.union(v.string(), v.number(), v.boolean(), v.array(v.any()))
        ),
        triggers: v.array(
          v.union(
            v.object({ type: v.literal("schedule"), cron: v.string() }),
            v.object({ type: v.literal("webhook"), url: v.string() }),
            v.object({ type: v.literal("event"), eventType: v.string() })
          )
        ),
      }),
    }),
  },
  returns: {
    i: v.object({
      workflow: v.object({
        steps: v.array(
          v.object({
            id: v.string(),
            name: v.string(),
            type: v.union(
              v.literal("action"),
              v.literal("condition"),
              v.literal("loop")
            ),
            config: v.record(v.string(), v.any()),
            next: v.optional(v.string()),
            error: v.optional(
              v.object({
                handler: v.string(),
                retry: v.object({
                  count: v.number(),
                  delay: v.number(),
                }),
              })
            ),
          })
        ),
        variables: v.record(
          v.string(),
          v.union(v.string(), v.number(), v.boolean(), v.array(v.any()))
        ),
        triggers: v.array(
          v.union(
            v.object({ type: v.literal("schedule"), cron: v.string() }),
            v.object({ type: v.literal("webhook"), url: v.string() }),
            v.object({ type: v.literal("event"), eventType: v.string() })
          )
        ),
      }),
    }),
  },
  handler: (ctx, args) => {
    return args;
  },
});
