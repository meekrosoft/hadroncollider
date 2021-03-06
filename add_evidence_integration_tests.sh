#! /bin/bash
set -e
# USAGE:
# $1 host
# $2 organization
# $3 project
# $4 sha
# $5 evidence_type
# $6 description

#
# ./add_evidence.sh $host cern hadroncollider '084c799cd551dd1d8d5c5f9a5d593b2e931f5e36122ee5c793c1d08a19839cc0' integration_tests "Adding integration test information"


curl -H 'Content-Type: application/json' \
     -X PUT \
     -d '{"evidence_type": "'"$5"'", "contents": {"is_compliant": "true", "test_report_url": "http://server.example.com/'"$5"'", "description": "Adding evidence: '"$6"'"}}' \
    $1/api/v1/projects/$2/$3/artifacts/$4

