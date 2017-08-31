using System.Collections.Generic;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Xamarin.Forms.CommonCore
{
    [ContentProperty("Animations")]
    public class CoreStoryBoard : AnimationBase
    {
        public CoreStoryBoard()
        {
            Animations = new List<AnimationBase>();
        }

        public CoreStoryBoard(List<AnimationBase> animations)
        {
            Animations = animations;
        }

        public List<AnimationBase> Animations
        {
            get;
        }

        protected override async Task BeginAnimation()
        {
            foreach (var animation in Animations)
            {
                if (animation.Target == null)
                    animation.Target = Target;

                await animation.Begin();
            }
        }
    }
}
