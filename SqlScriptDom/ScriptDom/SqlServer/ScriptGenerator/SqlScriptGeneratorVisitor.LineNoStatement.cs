//------------------------------------------------------------------------------
// <copyright file="SqlScriptGeneratorVisitor.LineNoStatement.cs" company="Microsoft">
//         Copyright (c) Microsoft Corporation.  All rights reserved.
// </copyright>
//------------------------------------------------------------------------------
using Microsoft.SqlServer.TransactSql.ScriptDom;

namespace Microsoft.SqlServer.TransactSql.ScriptDom.ScriptGenerator
{
    partial class SqlScriptGeneratorVisitor
    {
        public override void ExplicitVisit(LineNoStatement node)
        {
            GenerateKeyword(TSqlTokenType.LineNo);
            GenerateSpaceAndFragmentIfNotNull(node.LineNo);
        }
    }
}
