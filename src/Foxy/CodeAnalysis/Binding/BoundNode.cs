using System.IO;
using Foxy.CodeAnalysis.Syntax;

namespace Foxy.CodeAnalysis.Binding
{
    internal abstract class BoundNode
    {
        protected BoundNode(SyntaxNode syntax)
        {
            Syntax = syntax;
        }

        public abstract BoundNodeKind Kind { get; }
        public SyntaxNode Syntax { get; }

        public override string ToString()
        {
            using (var writer = new StringWriter())
            {
                this.WriteTo(writer);
                return writer.ToString();
            }
        }
    }
}
