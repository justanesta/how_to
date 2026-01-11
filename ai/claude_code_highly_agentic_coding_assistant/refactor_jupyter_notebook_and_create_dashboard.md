# Notebook Enhancement

If you're ever unsure of how best to prompt/ask Claude for what to do, you can ask Claude to help you with your prompts/queries based on what you would like to find out/execute. Basically: "Here's what I want to do: XYZ, give me the best possible prompt to accomplish this task."

An example for updating a Juptyer notebook:


```
Review the existing notebook and identify:
- What business metrics are currently calculated
- What visualizations are created
- What data transformations are performed
- Any code quality issues or inefficiencies
```

You can also include detailed explanation in a section titled `**Refactoring Requirements**`. Lastly, it's good to end a longer, complex prompt with a section outling what you're expecting to see like `**Deliverables Expected**`. For example:


```
**Deliverables Expected
- Refactored Jupyter notebook (EDA_Refactored.ipynb) with all improvements
- Business metrics module (business_metrics.py) with documented functions
- Requirements file (requirements.txt) listing all the dependencies
- README section explaining how to use the refactored analysis
```

# Change to Dashboard
You can avoid a lot of back-and-forth with Claude Code by enhancing simple prompts like the below:
```
Convert <Data Analysis Script/Notebook> into a professional Streamlit dashboard with this exact layout:
```
With more details like
```
## Layout Structure

- **Header**
    - XYZ
    - ABC
- **KPI Row**:
    - XYZ
    - ABC
- **Charts Grid**:
    - XYZ
    - ABC
- **Bottom Row**:
    - XYZ
    - ABC

# Key Requirements
- Use Plotly for all charts
- Filter update charts correctly
- Professional styling with trend arrows/colors
- Do not use icons
- Use uniform card heights for each row
- Show two decimal places for each trend indicator
- Include requirements.txt and README.md
```

Don't be afraid to stop the Claude process in the middle of a long plan execution and direct it to a specific different task you might want it to execute.