using Foxy.CodeAnalysis.Syntax;

namespace Foxy.CodeAnalysis.Binding
{
    internal abstract class BoundStatement : BoundNode
    {
        protected BoundStatement(SyntaxNode syntax)
            : base(syntax)
        {
        }
    }
}
