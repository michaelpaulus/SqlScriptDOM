//------------------------------------------------------------------------------
// <copyright file="SqlScriptGeneratorVisitor.AlterSecurityPolicyStatement.cs" company="Microsoft">
//         Copyright (c) Microsoft Corporation.  All rights reserved.
// </copyright>
//------------------------------------------------------------------------------
using System;

using Microsoft.SqlServer.TransactSql.ScriptDom;

namespace Microsoft.SqlServer.TransactSql.ScriptDom.ScriptGenerator
{
    partial class SqlScriptGeneratorVisitor
    {
        public override void ExplicitVisit(AlterSecurityPolicyStatement node)
        {
            GenerateKeyword(TSqlTokenType.Alter);
            GenerateSpaceAndIdentifier(CodeGenerationSupporter.Security);
            GenerateSpaceAndIdentifier(CodeGenerationSupporter.Policy);

            GenerateSecurityPolicyStatementBody(node);
        }
    }
}
