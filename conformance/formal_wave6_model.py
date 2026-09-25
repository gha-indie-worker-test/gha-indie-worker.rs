#!/usr/bin/env python3
from itertools import product

# Exhaust duplicate delivery schedules for two logical jobs.
def apply(done, key):
    return done | {key}

for schedule in product(("a", "b"), repeat=4):
    done = set()
    for key in schedule:
        before = len(done)
        done = apply(done, key)
        assert len(done) >= before
        assert len(done) <= 2
    assert done == set(schedule), "visible effects diverged from unique logical jobs"
print("duplicate delivery idempotency model: ok")
