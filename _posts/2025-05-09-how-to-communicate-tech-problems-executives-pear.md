---
layout: post
title:  "When Things Go PEAR-shaped: A Simple Framework for Communicating Technical Problems to Executives"
date:   2025-05-09 09:28:50
tags: executive-communication production-incidents engineering-leadership
image: /assets/article_images/2025-05-09-how-to-communicate-tech-problems-executives-pear/PEARS.jpg
image2: /assets/article_images/2025-05-09-how-to-communicate-tech-problems-executives-pear/PEARS-mobile.jpg
---

# When things go PEAR-shaped: A Simple Framework for Communicating Technical Problems to Executives

We've all been there. The tension is palpable. A production incident is impacting users, or a critical customer is facing a frustrating issue. Your team is heads-down, working hard on a fix. Now comes the moment when you need to communicate the situation to the executive team.

For many engineers and even engineering managers, this can feel daunting. How do you translate complex technical details into something meaningful and actionable for someone who might not understand the difference between a 500 error and a caching issue? How do you convey the urgency and impact without getting lost in the weeds or causing unnecessary panic?

I vividly remember one particularly challenging project rollout. We had just released a major new feature after a year of development – a change that promised significant reliability, performance, and cost savings. It felt like a slam dunk. However, during the rollout, we hit unexpected edge cases in production that were incredibly difficult to reproduce in testing. This forced us to roll back the feature, requiring significant changes and delaying our release schedule.

Communicating this setback to our executive team was a fraught moment. Adding to the challenge, one of the key executives had recently taken on oversight of my teams, and we hadn't yet built a strong working relationship. As a leader, I needed to be crystal clear about the technical problem and its impact, but also protect the reputation of my dedicated team. It was in moments like these that I discovered the power of having a simple, reliable structure for communicating under pressure. Using what would become the **PEAR** framework helped me craft regular, transparent updates. The clarity of our plans and our open communication about the issues ultimately built a significant store of trust with this new executive.

The key is clear, concise, and focused communication. Executives are busy and need information presented in a way that allows them to quickly grasp the situation, understand the business implications, and make informed decisions if necessary. Over the years, I've found a simple framework that can help structure your thoughts and ensure you hit the key points when communicating technical problems upwards. Think of it as your compass in the storm.

Here’s the framework: **P.E.A.R.**

![The PEAR Framework for Executive Communication](/assets/article_images/2025-05-09-how-to-communicate-tech-problems-executives-pear/pear-framework.png)

---

Let's break down each part:

## P - Problem: What's Happening?

Start with a high-level, easy-to-understand summary of the technical problem. Avoid deep technical jargon here. Imagine explaining it to a friend who isn't in tech.

* What is the core issue? (e.g., "Our website is currently unavailable," "Customers are unable to complete purchases," "A key report is not updating.")
* When did it start? (Provide a timestamp or an approximate time.)
* How was it detected? (e.g., "Automated monitoring triggered an alert," "A customer reported the issue," "Internal testing discovered the problem.")

**Pro-Tip:** Get straight to the point. Executives appreciate brevity. They don't need a step-by-step breakdown of your debugging process in this initial summary.

---

## E - Effect: Who Cares and Why?

This is arguably the most critical part for an executive audience. They need to understand the business effect of the technical problem. Frame the effect in terms they understand: customers, revenue, reputation, or operational efficiency.

* Who is affected? (e.g., "All users in the US," "Customers attempting to use Feature X," "Our internal sales team.")
* How are they affected? (e.g., "Users cannot access the service," "Customers are seeing error messages and abandoning their carts," "The sales team cannot get up-to-date information.")
* What is the business effect? (e.g., "Estimated revenue loss of $X per hour," "Potential for significant customer churn," "Damage to our brand reputation," "Reduced operational productivity.")

**Pro-Tip:** Quantify the effect whenever possible. Numbers speak volumes. If you don't have exact figures, provide estimates or indicate the severity (e.g., "Major effect," "Moderate effect").

---

## A - Action: What Are We Doing About It?

Now that you've clearly articulated the problem and its effect, explain your plan to address it. This demonstrates that you have a handle on the situation and are actively working towards resolution, implementing a temporary workaround and planning a more permanent fix.

* What are the immediate steps being taken? (e.g., "The engineering team is investigating the root cause," "We are implementing a temporary workaround," "We are rolling back the recent deployment.")
* What is the expected timeline for resolution (if known)? (Provide an estimate, but be realistic. It's better to under-promise and over-deliver.)
* What is the long-term plan to prevent recurrence (for non-incidents or after an incident is resolved)? (e.g., "We plan to implement additional monitoring," "We will be conducting a post-mortem analysis," "We will prioritize a code fix in the next sprint.")

**Pro-Tip:** Focus on the what and when of the plan, not the intricate technical how. You can have the technical details ready as backup if asked, but keep the initial communication high-level.

---

## R - Request: What Do You Need?

This is where you tell the executives what you need from them, or what they should be prepared for. This could be a decision you need made, resources required, or simply a heads-up about potential customer communications.

* Do you need a decision? (e.g., "We need approval to roll back the production database," "We need a decision on whether to extend the maintenance window.")
* Do you need resources or support? (e.g., "We need assistance from the data science team," "We may need support in communicating with affected customers.")
* What should they be ready for? (e.g., "Our customer support team may see an increase in tickets," "There may be social media activity regarding this issue," "We will provide another update in 30 minutes.")
* Is this just an FYI? If you don't need anything specific, state clearly that this is for their information.

**Pro-Tip:** Be clear and direct with your request. Executives are busy and need to quickly understand if there's an action required from them.

---

## Why PEAR Works

Using the PEAR framework isn't just about following steps; it's about intentionally structuring your communication for maximum effectiveness with an executive audience. Here’s why it makes a difference:

* **For Executives: Clarity and Efficiency:** Executives operate on tight schedules and need information delivered quickly and clearly. PEAR frontloads the essential information: What's wrong (**Problem**) and how it impacts the business (**Effect**). This allows them to immediately grasp the severity and relevance. They then get a concise update on the plan (**Action**) and understand exactly what, if anything, is needed from them (**Request**). This structure prevents getting bogged down in technical minutiae and allows for faster comprehension and decision-making.
* **For You: Confidence and Control:** Facing a technical problem is stressful enough. Having a predefined structure like PEAR gives you a roadmap for communication. It helps you organize your thoughts logically under pressure, ensures you don't forget critical pieces of information (especially the all-important business impact!), and empowers you to deliver updates confidently. You stay in control of the message, providing the right level of detail at the right time.
* **Builds Trust:** Consistent, clear communication using a predictable structure builds trust with executive leadership. They come to rely on your updates being informative and to the point, which is crucial during high-pressure situations like production incidents.

By consistently applying the PEAR framework, you turn potentially chaotic technical updates into structured, impactful business communication.

---

## Using PEAR to Craft Your Communication Plan

The beauty of the PEAR framework lies in its ability to serve as the foundation for your entire communication plan. Think of the points you develop for each letter (**Problem**, **Effect**, **Action**, **Request**) as the core message you need to convey.

Once you have these core PEAR points, the next crucial step is tailoring this message for your specific executive audience. Not all executives have the same background, responsibilities, or level of technical understanding. The more you know about who you're talking to, the better you can adapt your message for maximum impact and relevance.

Consider these questions when tailoring your PEAR message:

* Are they technical? For executives with an engineering or technical background (like a CTO), you might include slightly more (but still concise!) technical context in the "Problem" and "Action" sections if it helps them understand the complexity or the efficacy of the solution. For non-technical executives, keep the technical details to a bare minimum, focusing purely on the business implications.
* Do they like a lot of detail, or just the headlines? Some executives prefer a brief summary upfront and appreciate having detailed backups available if they ask questions. Others might want a bit more context woven into the initial update. Pay attention to their communication style over time.
* What are their areas of responsibility or key focuses? Tailor the Effect section to highlight the impact most relevant to them. The Head of Revenue will care about lost sales; the Head of Customer Success, about customer impact and churn; and the Head of Legal, about compliance risks. Frame the business effect in their language and priorities.
* Is a key customer impacted? If a high-value or strategically important customer is affected, elevate this information, perhaps even mentioning it in the problem or definitely detailing the effect and the proposed action related to managing that specific customer relationship.

By using your PEAR points as a base and then adjusting the emphasis, detail, and language based on your audience, you ensure your message is not only clear but also highly relevant and persuasive to each executive you communicate with.

---

## Putting It All Together: An Example

To see how applying the PEAR framework and then tailoring the message works in practice, let's revisit our login issue example:

**Core PEAR Message - for initial internal discussion/planning:**

* **Problem:** Login failure affecting all users globally since 9:15 AM ET, detected by monitoring.
* **Effect:** Complete user lockout, high frustration, estimated $X/min revenue loss.
* **Action:** Investigating auth service, considering config rollback, ETA 30-60 mins for next update/resolution path.
* **Request:** FYI for now, anticipate CS load, will update in 30 mins.

**Tailored Message for CEO/Revenue Lead:**

"Team, we have a significant production problem: Login is down globally, impacting all users since 9:15 AM ET. The key effect is a complete halt of business activity – users can't use the service, directly translating to an estimated $X per minute in lost revenue. The team is taking action, actively investigating the auth service, targeting a potential resolution or clearer update within the next 30-60 minutes. Our request is just an FYI for now, but be aware of the significant revenue impact and potential for user churn."

**Tailored Message for Head of Customer Success:**

"Team, a major problem with login started at 9:15 AM ET, preventing all users from accessing the platform. The main effect is severe customer frustration and inability to use the product, which will likely cause a surge in support tickets and potentially damage our relationship with key customers. The engineering team is taking urgent action to restore service, investigating the auth system with an estimated update or fix path within 30-60 minutes. Our request is for the CS team to be fully prepped for increased customer contact and to flag any reports from key accounts immediately. We will provide updates."

---

## Practice Makes Perfect

Mastering communication with executives about technical problems is a valuable skill that improves with practice. Use the **PEAR** framework as your guide for building a clear, concise core message. Then, take the crucial step to consider your specific audience and tailor that message for maximum impact and relevance.

Remember, your goal is to provide clarity and build confidence that the problem is understood and being addressed effectively. By focusing on the **Problem**, its **Effect**, the **Action** being taken, and your **Request**—and tailoring it to your audience—you empower yourself and help your leadership navigate challenges together.

**The next time you face a tricky communication moment, use the PEAR framework to structure your message, demonstrate confident leadership, and build trust when it matters most.**


*Photo by [Skyler Ewing](https://unsplash.com/@skylerewing) on [Unsplash](https://unsplash.com/photos/a-group-of-yellow-pears-t7YK3v6ZAKI)*